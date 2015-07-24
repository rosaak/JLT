#rename wow variable to data.qiime
# you should get script in here for how wow was read in
data.qiime = wow
lengthsByOtu.qiime = unlist( lapply( wow, length ) );
# to see some otu/tax
#sst2[ sst2[,"OTUs" ] %in% names( tail( sort( lengthsByOtu.qiime ) ) ), ]

# here we start to focus on a single "genus"
tgt= "298954" 
data.qiime[[ tgt ]]
ids.qiime = data.qiime[ tgt ]

# read the accToTax data from silva/rdp
silva.rdp = read.table( "/anas/bank/bugs/silva/119/silva.bacteria.rdp.tax", sep="\t", header=F )
colnames( silva.rdp ) = c( "Acc", "Tax" )

# check for bt.lacto.accs as that was the old variable name
silva.lacto.accs = silva.rdp[ grep( "Lactobacillus", silva.rdp[,"Tax"] ), "Acc" ]

# it is possible this does not get them all
qiime.lacto.otus = as.character( sst2[ grep( "Lactobacillus", sst2[,2] ), 1 ] )

qiime.lacto.readids = unlist( wow[ qiime.lacto.otus ] )
qiime.lacto.nc2.readids = qiime.lacto.readids[ grep( "NC[.]2", qiime.lacto.readids ) ]

library( GenomicAlignments  )
bam = readGAlignments( "/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam", index="/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam.bai", use.names=T )

bowtie2.lacto.readids = names( bam[ seqnames( bam ) %in% silva.lacto.accs ] );
bowtie2.lacto.nc2.readids = bowtie2.lacto.readids[ grep( "NC[.]2", bowtie2.lacto.readids ) ]

getVennSets = function( a, b, name.a="a.only", name.b="b.only", name.both="both" )
{
	rv = list();
	rv[[ name.both ]] = a[ a %in% b ];
	rv[[ name.a ]] = a[ !(a %in% b ) ];
	rv[[ name.b ]] = b[ !(b %in% a ) ];
	return( rv );
}

vs = getVennSets( bowtie2.lacto.nc2.readids, qqq, name.a ="Bowite"

b = bowtie2.lacto.nc2.readids
q = qiime.lacto.nc2.readids
length( b[ b %in% q ] )
length( q[ q %in% b ] )
length( b[ !(b %in% q) ] )
length( q[ !(q %in% b) ] )
b.only = b[ !( b %in% q ) ]
q.only = q[ !( q %in% b ) ]

# this tv thing is to transform readIds (names) to qiime.otus (values)
# name it qiime.readToOtu or something
tx = unlist( data.qiime )
tv = names( tx )
names( tv ) = tx

qiime.otus.from.b.only = tv[ names( tv ) %in% b.only ]
bowtie.accs.from.q.only = as.character( seqnames( bam )[ names( bam ) %in% q.only ] )

# here we look at what QIIME did with the reads that BOWTIE2 said were our target, but QIIME did not
# need to look at why it seems that there are still QIIME OTUs for g__Lactobacillus in this:
sst2[ sst2[,1] %in% qiime.otus.from.b.only, ]

silva.rdp[ silva.rdp[,1] %in% bowtie.accs.from.q.only, ]

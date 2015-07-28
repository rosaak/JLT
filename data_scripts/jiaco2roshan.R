#rename wow variable to data.qiime
data.qiime = wow
lengthsByOtu.qiime = unlist( lapply( wow, length ) );
#sst2[ sst2[,"OTUs" ] %in% names( tail( sort( lengthsByOtu.qiime ) ) ), ]
tgt= "298954" 
data.qiime[[ tgt ]]
ids.qiime = data.qiime[ tgt ]

silva.rdp = read.table( "/anas/bank/bugs/silva/119/silva.bacteria.rdp.tax", sep="\t", header=F )
colnames( silva.rdp ) = c( "Acc", "Tax" )

# check for bt.lacto.accs as that was the old variable name
silva.lacto.accs = silva.rdp[ grep( "Lactobacillus", silva.rdp[,"Tax"] ), "Acc" ]
qiime.lacto.otus = as.character( sst2[ grep( "Lactobacillus", sst2[,2] ), 1 ] )

qiime.lacto.readids = unlist( wow[ qiime.lacto.otus ] )
qiime.lacto.nc2.readids = qiime.lacto.readids[ grep( "NC[.]2", qiime.lacto.readids ) ]

library( GenomicAlignments  )
bam = readGAlignments( "/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam", index="/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam.bai", use.names=T )

bowtie2.lacto.readids = names( bam[ seqnames( bam ) %in% silva.lacto.accs ] );
bowtie2.lacto.nc2.readids = bowtie2.lacto.readids[ grep( "NC[.]2", bowtie2.lacto.readids ) ]

b = bowtie2.lacto.nc2.readids
q = qiime.lacto.nc2.readids
length( b[ b %in% q ] )
length( q[ q %in% b ] )
length( b[ !(b %in% q) ] )
length( q[ !(q %in% b) ] )
b.only = b[ !( b %in% q ) ]
q.only = q[ !( q %in% b ) ]

# this tv thing is to transform readIds (names) to qiime.otus (values)
tx = unlist( data.qiime )
tv = names( tx )
names( tv ) = tx

qiime.otus.from.b.only = tv[ names( tv ) %in% b.only ]
bowtie.accs.from.q.only = as.character( seqnames( bam )[ names( bam ) %in% q.only ] )

sst2[ sst2[,1] %in% qiime.otus.from.b.only, ]

silva.rdp[ silva.rdp[,1] %in% bowtie.accs.from.q.only, ]

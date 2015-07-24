head(wow)
head(wow[1])
length(wow[1])
char(wow[1])
nchar(wow[1])
wow[1]
wow[1][1]
wow[1][,1]
wow[,1][1]
wow[[1]][1]
wow[[1]][2]
wow[[1]][4]
wow[[1]]
typeof(wow[[1]])
strsplit(wow[[1]])
strsplit(wow[[1]],"")
strsplit(wow[[1]]," ")
length(strsplit(wow[[1]]," "))
length(strsplit(wow[[1]]," "))
length(strsplit(wow," "))
length(strsplit(wow[[1]]," "))
length(strsplit(wow[1]," "))
length(strsplit(wow[[x]]," "))
length(strsplit(wow[[1]]," "))
length(strsplit(wow[[2]]," "))
length(strsplit(wow[[3]]," "))
sapply(wow , function(x){ length(strsplit(wow[[x]]," ")) }
)
sapply(wow , function(x){ length(strsplit(wow[[x]]," ") })
sapply(wow , function(x){ length(strsplit(wow[[x]]," ") })
sapply(wow , function(x){ length(strsplit(wow[[x]]," ")) }
)
sapply(wow , function(x){ length(strsplit(wow[[x]]," ")) })
sapply(wow , function(x){ length(strsplit(wow[x]," ")) })
sapply(wow , function(x){ length(strsplit(x," ")) })
countOTUs = sapply(wow , function(x){ length(strsplit(x," ")) })
head(countOTUs)
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";")
sstax$Tax[1:5]
paste( strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") )
paste( strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";")," " )
paste0( strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") , " " )
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") )
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") 
unlist(strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") )
paste(unlist(strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") ))
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") )
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") 
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";") 
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";", collapse="") 
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";", collapse=" ") 
paste( strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";"), collapse="")
paste( strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";"), collapse=" ")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), " ")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), "_ ")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), "_")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:5]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:15]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax[12:24]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax[12:240]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax[1]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax[1:200]), ";")
strsplit(gsub ("\\s|.__","", sstax$Tax), ";")
sstax$Tax
strsplit(gsub ("\\s|.__","", sstax2$Tax), ";")
strsplit(gsub ("\\s|.__","", sstax2), ";")
strsplit(gsub ("\\s|.__","", sst2), ";")
strsplit(gsub ("\\s|.__","", sst2$Tax), ";")
strsplit(gsub ("\\s|.__","", sst2$Tax), ";")
fixTaxToLevel = function( x, level = 6 )
{
        tok = strsplit( x, "[;]" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel(sst2$Tax)
fixTaxToLevel = function( x, level = 6 )
{
        tok = strsplit( x, ";" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel = function( x, level = 6 )
fixTaxToLevel = function( x, level = 6 )
{
        tok = strsplit( x, ";" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel(sst2$Tax)
strsplit( sst2$Tax, ";" )[[ 1 ]];
strsplit( sst2$Tax, ";" )[[ 1 ]];
strsplit(gsub ("\\s|.__","", sst2$Tax), ";")
sp = strsplit(gsub ("\\s|.__","", sst2$Tax), ";")
head(sp)
tok = strsplit(gsub ("\\s|.__","", sst2$Tax[1]), ";")
tok
ntok = length( tok );
ntok
strsplit( sst2$Tax[1], ";" )
strsplit( sst2$Tax[1], ";" )
sst2$Tax[1]
strsplit(gsub ("\\s|.__","", sst2$Tax[1]), ";")
strsplit(gsub ("\\s|.__","", sst2$Tax[1]))
strsplit(gsub ("\\s|.__","", sst2$Tax[1]))
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),"")
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),",")
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),";")
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),";")[[1]]
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),",")[[1]]
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),",")
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),",")[[1]]
strsplit( strsplit(gsub ("\\s|.__","", sst2$Tax[1]),",")[[1]] , ";")[[1]]
strsplit( strsplit(gsub ("\\s|.__","", sst2$Tax[1]),",")[[1]] , ";")[[1]]
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),";")
strsplit(gsub ("\\s|.__","", sst2$Tax[1]),";")[[1]]
        tox = strsplit(gsub ("\\s|.__","", x), ";")[[1]]
tox = strsplit(gsub ("\\s|.__","",  sst2$Tax), ";")[[1]]
tox
tox = strsplit(gsub ("\\s|.__","",  sst2$Tax[1]), ";")[[1]]
tox
ntok = length(tok)
ntok
if (ntok <6){
tok = c(tox, rep("missing", level - ntok));
}
level =6
if (ntok <6){
tok = c(tox, rep("missing", level - ntok));
}
paste(tok[1:level], collapse='.')
fixTaxToLevel = function( x, level = 6 )
{
        tox = strsplit(gsub ("\\s|.__","", x), ";")[[1]]
        #tok = strsplit( x, ";" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel(sst2Tax)
fixTaxToLevel(sst2$Tax)
sst2$Tax
sapply( sst2$Tax, function(x) fixTaxToLevel(x) )
sapply( sst2$Tax[1:5], function(x) fixTaxToLevel(x) )
sapply( sst2$Tax[1:20], function(x) fixTaxToLevel(x) )
sapply( sst2$Tax[200:250], function(x) fixTaxToLevel(x) )
sst2$Tax
sst2$Tax[1:5]
sapply( sst2$Tax[1:5], function(x) fixTaxToLevel(x) )
sapply( sst2$Tax[3774], function(x) fixTaxToLevel(x) )
strsplit(gsub ("\\s|.__","", sst2$Tax[3774]), ";")[[1]]
strsplit(gsub ("\\s|.__","", sst2$Tax[3775]), ";")[[1]]
tok = strsplit(gsub ("\\s|.__","", sst2$Tax[3775]), ";")[[1]]
ntok = length( tok );
if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
level
paste( tok[1:level], collapse="." )
fixTaxToLevel(sst2$Tax)
fixTaxToLevel(sst2$Tax[1])
fixTaxToLevel(sst2$Tax[10])
getTaxLevel = function( x, level = 5 )
{
sapply( x, function(fx) { strsplit( fx, "[.]" )[[ 1 ]][ level ] } );
}
getTaxLevel(sst2$Tax)
fixTaxToLevel(sst2$Tax[10])
fixTaxToLevel(sst2$Tax[12])
g = fixTaxToLevel(sst2$Tax[12])
getTaxLevel(g)
getTaxLevel(g, level=3)
fixTaxToLevel = function( x, level = 6 )
{
        tox = strsplit(gsub ("\\s|.__","", x), ";")[[1]]
        #tok = strsplit( x, ";" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel(sst2$Tax[1])
fixTaxToLevel(sst2$Tax[56546])
sst2$Tax[56546]
strsplit(gsub ("\\s|.__","", sst2$Tax[56546]), ";")[[1]]
paste(strsplit(gsub ("\\s|.__","", sst2$Tax[56546]), ";")[[1]], collapse=".")
ls()
rm(fixTaxToLevel)
rm(tok)
rm(tox)
rm(ntok)
fixTaxToLevel = function( x, level = 6 )
{
        tox = strsplit(gsub ("\\s|.__","", x), ";")[[1]]
        #tok = strsplit( x, ";" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel(sst2$Tax[1])
fixTaxToLevel = function( x, level = 6 )
{
        tok = strsplit(gsub ("\\s|.__","", x), ";")[[1]]
        #tok = strsplit( x, ";" )[[ 1 ]];
        ntok = length( tok );
        if( ntok < level ) {
                tok = c( tok, rep( "missing", level - ntok ) );
        }
        return( paste( tok[1:level], collapse="." ) );
}
fixTaxToLevel(sst2$Tax[1])
fixTaxToLevel(sst2$Tax[100])
sst2$Tax[100]
levels(sst2$Tax[100])
sst2$Tax[100]
getTaxLevel( fixTaxToLevel( sst2$Tax[100] ) )
getTaxLevel( fixTaxToLevel( sst2$Tax[100] ) ,level=5 )
getTaxLevel( fixTaxToLevel( sst2$Tax[100] ) ,level=4 )
getTaxLevel( fixTaxToLevel( sst2$Tax[100] ) ,level=2 )
sapply( sst2$Tax , getTaxLevel( fixTaxToLevel( x ) ,level=2 ))
sapply( sst2$Tax , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=2 ))
sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=2 ))
typeof( sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=2 )))
as.data.frame( sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=2 )))
sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=2 ))
sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=5 ))
sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=5 ))
sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=5 ))
sapply( sst2$Tax[1:5] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=5 ))
sapply( sst2$Tax[1:50] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=5 ))
sapply( sst2$Tax[1] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=5 ))
sapply( sst2$Tax[1] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=4 ))
sapply( sst2$Tax[1] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=3 ))
sapply( sst2$Tax[1] , function(x) getTaxLevel( fixTaxToLevel( x ) ,level=3 ))
getAccTax(1)
getAccTax(1)$tax
getAccTax(1)$acc
getAccTax(1)$tax
getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) )
getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=2)
sapply( sst2$Tax, fucntion(x) getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=2) )
sapply( sst2$Tax, fucntion(x) getTaxLevel( fixTaxToLevel( ( getAccTax(x)$tax ) ) , level=2) )

getAccTax(1)$tax
getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=2)
getAccTax(1)$tax
getAccTax(1)$acc
fixTaxToLevel( ( getAccTax(1)$tax ) )
fixTaxToLevel( ( getAccTax(1)$tax ) )
getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=2)
getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=2)[1]
getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=2)[[1]]
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lT = getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=level )[[1]]
        return(acc=Acc, tax=Tax, levelTax=lT)
}
mokefn(5)
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lT = getTaxLevel( fixTaxToLevel( ( getAccTax(1)$tax ) ) , level=level )[[1]]
        return(list(acc=Acc, tax=Tax, levelTax=lT))
}
mokefn(5)
getAccTax(sst2$Tax)$tax
getAccTax(sst2$Tax[4])$tax
ficTaxToLevel( getAccTax(sst2$Tax[4])$tax )
fixTaxToLevel( getAccTax(sst2$Tax[4])$tax )
etAccTax(6)$tax
getAccTax(6)$tax
fixTaxToLevel( getAccTax(6)$tax)
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt ) , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(list(acc=Acc, tax=Tax, levelTax=lT, fulltax=lT))
}
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(list(acc=Acc, tax=Tax, levelTax=lT, fulltax=lT))
}
mokefn(5)
mokefn(34534)
mokefn(34534)
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(list(acc=Acc, tax=Tax, levelTax=lT, fulltax=lt))
}
mokefn(34534)
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(list(acc=Acc,  levelTax=lT, fulltax=lt))
}
mokefn(23423)
mokefn(23)
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(c(acc=Acc,  levelTax=lT))  # fulltax=lt))
}
mokefn(23423)
mokefn(23423)
mokefn(23)
mokefn(2)
mokefn(1)
names(mokefn(1))
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(c(acc=Acc,  lT))  # fulltax=lt))
}
names(mokefn(1))
mokefn = function(index, level=2){
        Tax = getAccTax(index)$tax
        Acc = getAccTax(index)$acc
        
        lt = fixTaxToLevel( getAccTax(index)$tax )
        lT = getTaxLevel( lt , level=level )[[1]]
        fixTaxToLevel( getAccTax(sst2$Tax[index])$tax )
        return(c(acc=Acc,  levelTax=lT))  # fulltax=lt))
}
names(mokefn(1))
mokefn(1)
sapply(wow , function(x){ length(strsplit(x," ")) })
sapply(wow[1] , function(x){ length(strsplit(x," ")) })
sapply(wow[2] , function(x){ length(strsplit(x," ")) })
head(countOTUs)
wow[1]
mokefn(1)
mokefn(0)
mokefn(2)
getAccTax(1)
tax
ls()
head(g)
g
rm(g)
ls()
mokefn(1)
wow(797229)
wow
ls()
mokefn(1)
wow[797229]
wow[1]
names( wow )[ 15:20 ]
sst2[1:2]
sst2[,1:2]
str(sst2)
str(wow)
str(wow)
names( wow )[ 15:20 ]
wow[names( wow )[ 15:20 ]]
wow[names( wow )[ 15:20 ]][[1]]
wow[names( wow )[ 15:20 ]][1]
wow[names( wow )[ 15:20 ]]
mokefn(1)
head(sst2)
data.qiime = wow
lengthsByOtu.qiime = lqpply( wow, length )
lengthsByOtu.qiime = lapply( wow, length )
tail( sort( lengthsByOtu.qiime )
)
head( lengthsByOtu.qiime
)
lengthsByOtu.qiime = unlist( lengthsByOtu.qiime )
tail( sort( lengthsByOtu.qiime )
)
sst2[ sst2[,"OTUs" ] == "578016", ]
sst2[ sst2[,"OTUs" ] %in% names( tail( sort( lengthsByOtu.qiime ) ) ) ) ]
sst2[ sst2[,"OTUs" ] %in% names( tail( sort( lengthsByOtu.qiime ) ) ) ]
sst2[ sst2[,"OTUs" ] %in% names( tail( sort( lengthsByOtu.qiime ) ) ), ]
tgt= "298954" 
data.qiime[[ tgt ]]
ids.qiime = data.qiime[ tgt ]
ls()
sst2[ sst2[,"OTUs" ] %in% names( tail( sort( lengthsByOtu.qiime ) ) ), ]
silva.rdp = read.table( "/anas/bank/bugs/silva/119/silva.bacteria.rdp.tax", sep="\t", header=F )
colnames( silva.rdp ) = c( "Acc", "Tax" )
head( silva.rdp )
silva.rdp[ grep( 
silva.rdp[ grep( "Lactobacillus", silva.rdp[,"Tax"] ), ]
bt.silva.accs = silva.rdp[ grep( "Lactobacillus", silva.rdp[,"Tax"] ), "Acc" ]
length( bt.silva.accs )
ls()
sst2[ grep( "Lactobacillus", sst2[,2] ), ]
qiime.lacto.otus = sst2[ grep( "Lactobacillus", sst2[,2] ), 1 ]
qiime.lacto.otus
ls
qiime.lacto.otus = as.character( sst2[ grep( "Lactobacillus", sst2[,2] ), 1 ] )
head( data.qiime )
qiime.lacto.readids = unlist( wow[ qiime.lacto.otus ] )
length( qiime.lacto.readids )
qiime.lacto.readids
ls -lrt
ls()
qiime.lacto.nc2.readids = qiime.lacto.readids[ grep( "NC[.]2", qiime.lacto.readids ) ]
qiime.lacto.nc2.readids
library( GAlignments  )
library( GenomicAlignments  )
bam = readGAlignments( "/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam", index="/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam.bai" )
bam = readGAlignments( "/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam", index="/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam.bai" )
bam = readGAlignments( "/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam", index="/anas/i2mc/burcelin/miseq/testV/cleanFastq/cleaned_B.bowtie.default.bam.bai", use.names=T )
bam
silva.rdp[1:5,]
ls()
silva.lacto.accs = silva.rdp[ grep( "
bt.silva.accs
silva.rdp[ silva.rdp[,1] %in% bt.silva.accs, ]
ls()
bam
silva.lcato.accs = bt.silva.accs
rm( bt.silva.accs )
silva.lacto.accs = silva.lcato.accs
rm( silva.lcato.accs )
bowtie2.lacto.readids = names( bam[ seqnames( bam ) %in% silva.lacto.accs ] );
bowtie2.lacto.readids
bowtie2.lacto.nc2.readids = bowtie2.lacto.readids[ grep( "NC[.]2", bowtie2.lacto.readids ) ]
bam
history()
length( bowtie2.lacto.nc2.readids )
length( qiime.lacto.nc2.readids )
b = bowtie2.lacto.nc2.readids
q = qiime.lacto.nc2.readids
length( b[ b %in% q ] )
length( q[ q %in% b ] )
length( b[ !(b %in% q) ] )
length( q[ !(q %in% b) ] )
b.only = b[ !( b %in% q ) ]
b.only
t
tx = unlist( data.qiime )
head( tx )
tv = names( tx )
names( tx ) = tx;
tx[ b.only ]
head( tv )
head( tx )
history()
tx = unlist( data.qiime )
tv = names( tx )
names( tv ) = tx
head( tv )
tx[ b.only ]
tx[ names( tx ) %in% b.only ]
tv[ names( tv) %in% b.only ]
qiime.otus.from.b.only = tv[ names( tv) %in% b.only ]
sst2[ sst2[,1] %in% qiime.otus.from.b.only, ]
ls9)
ls()
q.only = q[ !( q %in% b ) ]
q.only
ls()
bowtie.accs.from.a.only = seqnames( bam )[ names( bam ) %in% a.only ]
bowtie.accs.from.q.only = seqnames( bam )[ names( bam ) %in% q.only ]
bowtie.accs.from.q.only
bowtie.accs.from.q.only = as.character( seqnames( bam )[ names( bam ) %in% q.only ] )
bowtie.accs.from.q.only
silva.rdp[ silva.rdp[,1] %in% bowtie.accs.from.q.only, ]
savehistory( "ahist.R" )
ids.qiime
head( tv )
silva.rdp[ silva.rdp[,1] %in% bowtie.accs.from.q.only, ]
sst2[ sst2[,1] %in% qiime.otus.from.b.only, ]
Lactobacillus
Lactobacillus
savehistory("bhist.R")

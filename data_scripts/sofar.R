q_otumap = read.table( "final_otu_map_mc1.txt", sep="\t", header=FALSE );
q_otumap = read.table( "final_otu_map_mc1.txt",  header=FALSE );
q_otumap = read.table( "final_otu_map_mc1.txt", header=FALSE );
q_otumap = read.table( "final_otu_map_mc1.txt");
q_otumap = read.table( "final_otu_map_mc1.txt")
q_otumap = read.table("final_otu_map_mc1.txt")
q_otumap = read.table( "final_otu_map_mc1.txt", sep="\t", header=FALSE );
q_otumap = read.table( "final_otu_map_mc1.txt", sep="\t");
q_otumap = read.table( "final_otu_map_mc1.txt", sep="\t", header=T);
d = readLines( "final_otu_map_mc1.txt" )
source( "/anas/gh/splitIntoDataFrame.R" )
tok = splitIntoDataFrame( d, header=T, sep="\t" )
sapply( d, function(x){ length( strsplit( x, "\t" )[[ 1 ] ) } )
sapply( d, function(x){ length( strsplit( x, "\t" )[[ 1 ]] ) } )
wow = sapply( d, function(x) { strsplit(x, "\t" )[[ 1 ]] } )
class( wow )
wow [[ 1 ]]
wow [[ 2 ]]
wow = sapply( d, function(x) { tok =strsplit(x, "\t" )[[ 1 ]]; rv = tok[2:(length(tok)]; names( rv ) = tok[1]; return( rv ) } )
wow = sapply( d, function(x) { tok =strsplit(x, "\t" )[[ 1 ]]; rv = tok[2:(length(tok))]; names( rv ) = tok[1]; return( rv ) } )
head( wow )
wow = sapply( d, function(x) 
{ 
        tok = strsplit(x, "\t" )[[ 1 ]]; 
        return( tok[2:(length(tok))] ); 
})
names( wow ) = sapply( d, function(x)
{
        tok = strsplit(x, "\t" )[[ 1 ]];
        return( tok[1] );
});
head(wow )
otuSet = names( wow )[ 15:20 ] 
otuSet
wow[ otuSet ]
wow[[ otuSet ]]
wow[otuSet ]
unlist( wow[otuSet ] )
dir()
tax = "uclust_assigned_taxonomy/rep_set_tax_assignments.txt"
readLines(tax, 20)
t2 = read.csv(tax, sep="\t")
head(t2)
dim(t2)
dim(wow)
length(wow)
head(wow)
head(t2)
head(t2[,1])
head(t2[1,])
names(t2[1,])
names(t2)
t2 = read.csv(tax, sep="\t", header=F)
names(t2)
names(t2$V1[,1])
names(t2$V1[1])
names(t2$V1)
head(t2$V1)
head(t2$V1)
head(t2$V1)
head(t2$V1[,1])
head(t2$V1[1])
t2$V1[1]
t2[1]
t2[2]
history()
head(t2)
head (t2$V4)
min(t2$V4)
max(t2$V4)
t2$V4
t2$V3
min(t2$V3)
max(t2$V3)
t2$V4
head(t2$V3)
head(t2$V2)
savehistory("sofar.R")

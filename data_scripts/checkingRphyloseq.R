source( "/anas/gh/splitIntoDataFrame.R" )
d = readLines( "final_otu_map_mc1.txt" )
tok = splitIntoDataFrame( d, header=T, sep="\t" )
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
otuSet = names( wow )[ 15:20 ] 

wow[ otuSet ]

# b = read_hdf5_biom("otu_table_mc1.biom")
mapfile="/anas/roshan-current/i2mc/burcelin/frm/runs/mapping_file.txt"
refseq ="rep_set.fna"
retree ="rep_set.tre"

#import_qiime(otufilename = "table.from_biom_w_taxonomy.tsv", mapfilename = mapfile, treefilename = retree, refseqfilename = refseq )

f = import_qiime(otufilename = "table.from_biom_w_taxonomy.tsv", mapfilename = mapfile, treefilename = retree )



#reading in the tax file
# /anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test2/OTU_picking/97_open_reference_otus/uclust_assigned_taxonomy/rep_set_tax_assignments.txt
t2 = read.csv(tax, sep="\t", header=F)




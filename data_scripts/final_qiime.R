#source( "/anas/gh/splitIntoDataFrame.R" )
#source("/anas/gh/bugs/readQiimeWork.R")

# The OTU file should be like this 
# 206494	HFD.1_7679	HFD.1_8587	HFD.1_36083	HFD.1_12809	HFD.1_35007	HFD.1_22437	HFD.2_3202	HFD.2_13169	HFD.2_23699	HFD.2_31530	HFD.2_28156	HFD.2_71542	HFD.2_71547	HFD.2_71548	HFD.2_66523	HFD.2_71539	HFD.4_58863	HFD.4_77320	NC.4_22949	NC.4_22951	NC.4_6967	NC.4_33394	NC.4_4244	NC.4_20130	NC.4_6491	NC.4_7459	NC.4_38773NC.4_22948	NC.4_16197	NC.4_39250	NC.4_18501	NC.4_1716	NC.4_63543	NC.4_73731	NC.4_59849	NC.4_51360	NC.4_46644	NC.4_55571	NC.4_86996 

# The OTU tables were all screewed up so run a piece of R code to convert it like the above

splitIntoDataFrame = function( x, header=TRUE, sep="\t" )
{
	rv = data.frame( do.call( rbind, strsplit( x, sep ) ),
		 stringsAsFactors=FALSE );
	if( header == TRUE ) {
		hdr = as.character( rv[1,] );
		rv = rv[ -1, ];
		colnames( rv ) = hdr;
	}
	return( rv );
}

fuckIds2 = function( X )
{
	lapply( X, function( X2 ) {
		sapply( X2, function(x) {
		tok = strsplit( x, "[.]" )[[1]];
		return( sprintf( "%s.%s_%s", tok[1], tok[2], tok[3] ) );
		})
	});
}

readQiimeOtus = function( path )
{
	d = readLines( path );
	rv = sapply( d, function(x) {
		tok = strsplit( x, "\t" )[[ 1 ]];
		return( tok[ 2:(length(tok)) ] );
	});
	names(rv) = sapply( d, function(x) {
		tok = strsplit( x, "\t" )[[ 1 ]];
		return( tok[ 1 ] );
	});
	return( rv );
}
fn= "final_otu_map.txt"
d= readQiimeOtus(fn)
d2 = fuckIds2(d)
writeQiimeOtus(d2, "damn.txt")


make_otu_table.py -i damn.txt -o otu_table_please_work4.biom  -t uclust_assigned_taxonomy/rep_set_tax_assignments.txt
# changed the metadata file accordigly
biom add-metadata -i otu_table_please_work4.biom -o otu_table_please_work4_w_mdata.biom --output-as-json -m ../../mapping_file2.txt 
biom convert -i otu_table_please_work4_w_mdata.biom -o T1.tsv --to-tsv --header-key taxonomy --output-metadata-id "ConsensusLineage"
sed -i s'/ConsensusLineage/Consensus Lineage/' T1.tsv
# This T1.tsv possibly be taken up by phyloseq import_qiime
# The file :
# Constructed from biom file
# OTU ID	HFD.1	HFD.2	HFD.4	NC.4	HFS.2	HFD.3	HFD.5	NC.2	NC.3	NC.5	NC.1	HFS.3	HFS.4	HFS.1	HFS.5	Consensus Lineage
# 206494	6.0	10.0	2.0	21.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	k__Bacteria; p__Firmicutes; c__Clostridia; o__Clostridiales; f__Lachnospiraceae; g__; s__
# 1800048	0.0	0.0	0.0	0.0	2.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	0.0	k__Bacteria; p__Bacteroidetes; c__Bacteroidia; o__Bacteroidales; f__Porphyromonadaceae; g__Parabacteroides; s__
# 541135	1.0	3.0	1.0	0.0	0.0	3.0	1.0	8.0	54.0	3.0	0.0	0.0	0.0	0.0	0.0	k__Bacteria; p__Firmicutes; c__Bacilli; o__Lactobacillales; f__Lactobacillaceae; g__Lactobacillus; s__

#Phyloseq or biom package use the old convension of Consensus Lineage otherwise the package dosent work 
d = import_qiime("T1.tsv")





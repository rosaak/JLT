---
title: "phyloseq_comparison"
author: "roshan"
date: "08/04/2015"
output: html_document
---

```{r}
suppressMessages( library(phyloseq) )
library(ggplot2)
suppressMessages( library(bioUtilsr) )
library(rhdf5)
library(biom)
suppressMessages( library("Biostrings") )
```

```{r}
# The Plotting Theme
theme_set(theme_bw())
pal = "Set3"
scale_colour_discrete <- function(palname = pal, ...) {
    scale_colour_brewer(palette = palname, ...)
}
scale_fill_discrete <- function(palname = pal, ...) {
    scale_fill_brewer(palette = palname, ...)
}
```
> How to convert singleton removed tax biom to tsv

The main obj is to compare the biom files from two different qiime runs:
R1 : biom file from  testV.fasta
R2 : biom file from  orientation_adjusted testV.fasta

import_qiime takes a tsv file which contains taxa , So i need to make it first for bot R1 and R2

biom convert -i otu_table_mc1_w_tax.biom -o table.from_biom_w_taxonomy.tsv  --to-tsv --table-type="OTU table" --header-key=taxonomy ; sed -i s'/taxonomy/Consensus Lineage/' table.from_biom_w_taxonomy.tsv

```{r}
# R1 Files Required
#/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R1
mappingfile = "/anas/roshan-current/i2mc/burcelin/frm/runs/targets/mapping_file2.txt"

R1.refseq="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R1/rep_set.fna"
R1.reftree="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R1/rep_set.tre"
R1.repseq="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R1/new_refseqs.fna"
R1.tsvfile ="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R1/table.from_biom_w_taxonomy.tsv"

R2.refseq="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R2/rep_set.fna"
R2.reftree="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R2/rep_set.tre"
R2.repseq="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R2/new_refseqs.fna"
R2.tsvfile ="/anas/roshan-current/i2mc/burcelin/frm/runs/qiime_test5/OTU_picking/R2/table.from_biom_w_taxonomy.tsv"
```

> Make two phyloseq obj

```{r}
R1 = import_qiime(otufilename = R1.tsvfile, mapfilename = mappingfile, treefilename = R1.reftree, refseqfilename = R1.repseq )

R2 = import_qiime(otufilename = R2.tsvfile, mapfilename = mappingfile, treefilename = R2.reftree, refseqfilename = R2.repseq )
```

> Save the phyloseq objs

```{r}
#save the phyloseq obj
save(R1, file = "R1.phyloseqoj")
save(R2, file = "R2.phyloseqoj")
```

```{r}
# load the data
Ordination methods```

> Accessors

```{r}
ntaxa(R1)
nsamples(R1)
sample_names(R1)
sample_variables(R1)
taxa_names(R1)[1:10]
rank_names(R1)
head(otu_table(R1))
phy_tree(R1)
head(tax_table(R1))
```

```{r}
myTaxa = names(sort(taxa_sums(R1), decreasing = TRUE)[1:10])
ex1 = prune_taxa(myTaxa, R1)
plot(phy_tree(ex1), show.node.label = TRUE)
plot_tree(ex1, color = "X.SampleID", label.tips = "Phylum", ladderize = "left", justify = "left" , size = "Abundance")
```


```{r}
get_taxa_unique(R1, taxonomic.rank = "Phylum")
```

> Plotting an Annotated Phylogenetic Tree

```{r}

# subsetting the phyloseq obj for taxa where Phylum is Firmicutes

R1f = subset_taxa(R1, Phylum == "Firmicutes")
R1b = subset_taxa(R1, Family == "Gemellaceae")
R2f = subset_taxa(R2, Phylum == "Firmicutes")

# Now get the top 100 taxa 
p1 = otu_table(R1f)[names(sort(taxa_sums(R1f), decreasing = T)[1:100])]

# Plot p1

plot_tree(R1b, color = "X.SampleID", shape="Family", size="abundance", plot.margin = 0.5, ladderize = TRUE)

```


```{r}
# Subset Bacteroidetes and Plot a phy tree

R1_bacteroidetes = subset_taxa(R1, Phylum == "Bacteroidetes")
R1_bacteroidetes = tax_glom(R1_bacteroidetes, "Family")
plot_tree(R1_bacteroidetes, color="X.SampleID", shape="Class", size="abundance",  plot.margin = 0.5, ladderize = TRUE)
```

```{r}
# Plot the abundance barplot of Bacteroidetes

title = "plot_bar; Bacteroidetes-only"
plot_bar(R1_bacteroidetes, "X.SampleID", "Abundance", "Family", title=title)

# Split the barplot by Treatment
plot_bar(R1_bacteroidetes, "Family", "Abundance", "Family", title=title, facet_grid="Treatment~.")
plot_bar(R1_bacteroidetes, "X.SampleID", "Abundance", "Family", title=title, facet_grid="Treatment~.")
#plot_bar(R1_bacteroidetes, "Replicate", "Abundance", "Family", title=title, facet_grid="Treatment~.")

```


> The distance fucntion in phyloseq

```{r}
# Check the various distances fns
phyloseq::distance("list")
dist_methods <- unlist(phyloseq::distance("list"))
dist_methods = dist_methods[-which(dist_methods=="ANY")]

plist <- vector("list", length(dist_methods))
names(plist) = dist_methods

for( i in dist_methods ){
  iDist <- phyloseq::distance(R1, method=i)
  iMDS  <- ordinate(R1, "MDS", distance=iDist)
  p <- NULL
  p <- plot_ordination(R1, iMDS, color="Treatment", shape="X.SampleID")
  p <- p + ggtitle(paste("R1 using distance method ", i, sep=""))
  plist[[i]] = p
}

```



> Ordination methods

```{r}
# Take a subset of the R1 dataset of top 200 species
topsp <- names(sort(taxa_sums(R1), TRUE)[1:500])
R1Top500 <- prune_taxa(topsp, R1)

# Subset further to top 50 phyla, among the top 500 OTUs.
top50ph <- sort(tapply(taxa_sums(R1Top500), tax_table(R1Top500)[, "Phylum"], sum), decreasing = TRUE)[1:50]

R1_50 <- subset_species(R1Top500, Phylum %in% names(top50ph))

First see how the samples behave on the first few CA axes:

```




















import pandas as pd

f1 = "damn.txt"
with open(f1, 'r')  as f:
    data = f.readlines()

newdt = {}
otus =[]
for e,i in enumerate(data):
    i = i.strip("\n") 
    #print e, i.split("\t")[1],';'.join(i.split("\t")[2:])
    #print e, i.split("\t")[0], len(i.split("\t"))-1
    otu = i.split("\t")[0]
    otus.append(otu)
    readids = i.split("\t")[1:]
    newdt[otu] =  '|'.join(readids).replace(" ","")
#print newdt
#keys =  [ k for k in newdt.keys() ]
testS = pd.Series(newdt)
testS.to_csv("modified_damn.csv")

# I need to get a counter for each line NCs , HFS and HFDs are there
# Once I get that it should look like this
# OTU  NC1 NC2.. HFD1 HFD2.. HFS1..
# 345345 0 4 56 78 34 ...

# Take the tax file and put it into a pd.DataFrame



    # for x in readids:
    #     NCs, HFD, HFS = [], [], []
    #     if "NC" in x:
    #         NCs.append(x)
    #     elif "HFD" in x:
    #         HFD.append(x)
    #     elif "HFS" in x:
    #         HFS.append(x)
    #     print HFD, HFS, NCs
    #     print len(HFD), len(HFS), len(NCs)

taxfile="rep_set_tax_assignments.txt"
T = pd.read_csv(taxfile, sep="\t", header=False)
T.columns = ["OTU","TAX","ab1","ab2"]
ssT = T[["OTU","TAX"]]
ssT.index= ssT["OTU"]

ssT2 = pd.Series(ssT['TAX'])
result = pd.concat([ssT2, testS], axis=1, join_axes=[ssT2.index])

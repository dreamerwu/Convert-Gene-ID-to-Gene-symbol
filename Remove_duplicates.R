#Step 1. convert Ensembl ID to Gene symbol
source("https:/bioconductor.org/biocLite.R")
biocLite("mygene")
library("mygene")
data=read.delim("~/xxxx",head=T,sep="\t")
result=getGenes(data)
write.csv(result,"~/xxxxxx")



#Step 2. the data are sorted by ID, so same IDs are near to each other
data=read.delim("D:/demo/demo.txt",head=T,sep="\t")
matrix=matrix(,ncol=8,nrow=(nrow(data)/2))
data2=as.matrix(data)
n=1
i=1
for (n in 1:nrow(data2)) {
  if (n%%2!=0) {    # %% means calculating modulus
  matrix[i:i,]=data2[n:n,]
  i=i+1
}
}
write.csv(matrix,"D:/demo/matrix_rsult.csv")

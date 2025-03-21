library(HDclust)

input <- function(inputfile) {
   dataX <<- read.csv(inputfile)
   dataX <<- dataX[,-1]
}   

run <- function() {
   Vb <- vb(1, dim=ncol(dataX), numst=1)
set.seed(12345)
modelBIC <- hmmvbBIC(dataX, VbStructure=Vb)
clust <<- hmmvbClust(faithful, bicObj=modelBIC)
}

output <- function(outputfile) {
   write.csv(clust@clsid, outputfile)
}

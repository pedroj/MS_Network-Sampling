############################################################
# Archontophoenix cunninghamiana. Horto-Rio Claro. 
# Practica de focal.
# Pedro Jordano. 30 Nov 2013.
# Observations focal palms in groups of two people.
#
setwd("/Users/pedro/Dropbox/Frugivoria 2013/R codes/")
#-----------------------------------------------------------
# We may eventually need these libraries.
library(network)
library(sna)
library(bipartite)
library(igraph)
library(vegan)
library(ade4)
#-----------------------------------------------------------
# Data. Input the census table as matrix here.
# Frugivore species are rows. Columns are palm individuals.
focal <- read.table("/Users/pedro/Dropbox/Frugivoria 2013/R codes/data/tabela_rede.txt", header=T, sep="\t", dec=".", na.strings="NA")

# Palm labels. Individual palms are cols 10-37 in "focal" dataframe.
mat<-as.matrix(focal[,13:26],col.names=c("Planta1","Planta2","Planta3","Planta4","Planta5","Planta6","Planta7","Planta8","Planta9","Planta10","Planta11","Planta12","Planta13","Planta14"))

# Frugivore individual labels.
row.names(mat)<-focal$code

#-------------------------------------------------------------
# Taxonomic diversity index
## Preliminary: needs better data and some support functions
tmat <- t(mat)
taxon<-focal[,1:4]
# Taxonomic distances from a classification table with variable step lengths.
taxdis <- taxa2dist(taxon, varstep=TRUE)
plot(hclust(taxdis), hang = -1)
# Indices
mod <- taxondive(tmat, taxdis)
mod
summary(mod)
plot(mod)

# Species accumulation curves --------------------------------
# Estimates of frugivore richness
library(vegan)
specpool(tmat)
all <- specaccum(tmat, method="random")

# Plotting the curve
plot(all,ci.type="poly", col="blue", lwd=2, ci.lty=0,ylim=c(0,20),ci.col="lightblue",main="Archontophoenix cunninghamiana",xlab="Number of plants",ylab="Number of frugivore species")
boxplot(all, col="yellow", add=TRUE, pch="+")

#-------------------------------------------------------------
# Assign the matrix
mymat<-mat
# Initializing bipartite webs for library network (type network) for plotting.
mat1 <- network.initialize(dim(mymat)[1]+dim(mymat)[2], bipartite=c(dim(mymat)[1]),directed=F)
mat1 <- network.bipartite(as.matrix(mymat),mat1)

# This is a plot to visualize the centrality-periphery locations of different
# nodes. It uses the Fruchterman-Reingold algorithm to relocate nodes 
# according to their similarity in overall interaction pattern. The graph is 
# still a bipartite graph. 
plot.network(mat1,
             usearrows=FALSE,jitter= T,
             #   mode= "circle",
                 mode= "fruchtermanreingold",
             #   mode= "kamadakawai", 
             label=network.vertex.names(mat1),displaylabels = T,
             boxed.labels= F,label.pad=0,label.pos= 5,label.cex= 1,
             vertex.col=c(rep(3,dim(mymat)[1]),rep(2,dim(mymat)[2])),vertex.cex= 4,
             vertex.sides= c(rep(5,dim(mymat)[1]),rep(12,dim(mymat)[2])),
             vertex.lty= 0,edge.lty=0.5,edge.col="grey10",
             label.lty=NULL,usecurve = F)

# This a plot of the bipartite structure with a bipartite layout.
library(bipartite)
plotweb(mat,method="normal",text.rot=90,
        col.interaction="grey50",
        col.high = "darkolivegreen3", col.low="brown3",
        bor.col.interaction ="grey50", bor.col.high="darkolivegreen3",
        bor.col.low="brown3")

# Get the network parameters. We use here the library bipartite.
netlevel<-networklevel(mat) # This gives you a lot of parameters
                            # for the WHOLE network
splevel<-specieslevel(mat) # This gives you a lot of parameters
                            # for each species and each palm.

#-----------------------------------------------------------
# Quantitative component. Isolines.
#-----------------------------------------------------------
# NOT-Log scaled axes. 
# Data for Archontophoenix cunninghamiana.

sde <- read.table("/Users/pedro/Dropbox/Frugivoria 2013/R codes/data/sde.txt", header=T, sep="\t", dec=".", na.strings="NA")

plot(sde$vish,sde$frutot,xlab="Visit rate",
     ylab="No. fruits/visit (total handled)", 
     main="Quantitative component",ylim=c(0,10),type="n")
#, col = terrain.colors(4:8)[qc$plant]
#text(vis, frv, plant, cex=0.6, pos=4, col="red")
points(sde$vish,sde$frutot,
       pch=c(1,2,4,6,7)[sde$fam])
#legend("topright", title="Family",
#c("Mimidae","Psittacidae","Thraupidae","Turdidae","Tyrannidae"), pch=c(1,2,4,6,7),horiz=T,ncol=1)
    
# Isolines of QC
# This code sets the values for the isolines.
# Needs to be adjusted to each particular study.
fru1<-seq(0,10,length.out=100)
vis1<-seq(0,2,length.out=100)
#        plot(vis1,0.5/fru1,type="n")
        lines(vis1,0.1/vis1)
        lines(vis1,1/vis1)
        lines(vis1,3/vis1)
        lines(vis1,5/vis1)
        lines(vis1,25/vis1)
        lines(vis1,50/vis1)
        lines(vis1,100/vis1)
        lines(vis1,150/vis1)
text(1.5,0, "QC= 0.1", cex=0.6, pos=4, col="red")
text(1.5,3, "QC= 1.0", cex=0.6, pos=4, col="red")
text(80,2.0, "QC= 5.0", cex=0.6, pos=4, col="red")
text(80,3.6, "QC= 10.0", cex=0.6, pos=4, col="red")
text(80,7, "QC= 15.0", cex=0.6, pos=4, col="red")
text(80,11, "QC= 20.0", cex=0.6, pos=4, col="red")
##############################################################



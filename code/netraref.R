#-------------------------------------------------------------------
# Rarefaction analyses.
# Species (taxa) are in columns. Census samples are the rows.
# Code variables are: 
# loc - Site
# species- Plant species censused
# plant- Individual plant code
# census5- 5 min census code
# census15- 15 min census code
# flowers- Number of flowers on plant at census time
# obs- Observer code
#
# All obsevations pooled.
accum <-read.table("/Users/pedro/Documents/Working/MS_Tesis_Isabel/
Data&Analyses/data/accum.txt",header=TRUE,sep="\t",dec=",",
na.strings="NA")

str(accum)
table(accum$species)
australe braun-blanquetii        charidemi     controversum       
graniticum           grosii       hispanicum 
38               89              396               68               
91               48               54 
latifolium            majus       meonanthum     microphyllum            molle      mollissimum       pertegasii 
31               40               37               24              
 54               53               68 
pulverulentum     sempervirens       valentinum 
55               65               69 

# Estimates of pollinator richness
specpool(accum[,2:46])
all<-specaccum(accum[,2:46],method="random")
plot(all,ci.type="poly", col="blue", lwd=2, 
ci.lty=0,ylim=c(0,45),ci.col="lightblue",main="2007",
xlab="Number of censuses",ylab="Number of pollinator species")
boxplot(all, col="yellow", add=TRUE, pch="+")

# Accumulation curves by species
# Specify only the numerical columns!
specpool(subset(accum, accum$species=="australe")[,2:46])

# Function to estimate accumulation curves and plot
spacc<-function (sp) {
spaccum<-specaccum(subset(accum, accum$species==sp)[,2:46],
method="random")
plot(spaccum,ci.type="poly", col="blue", lwd=2, 
ci.lty=0,ylim=c(0,20),ci.col="lightblue",main=sp,
xlab="Number of censuses",ylab="Number of pollinator species")
boxplot(spaccum, col="yellow", add=TRUE, pch="+")
}
par(mfrow=c(5,4))
spacc("australe")
spacc("braun-blanquetii")
spacc("charidemi")
spacc("controversum")
spacc("graniticum")
spacc("grosii")
spacc("hispanicum")
spacc("latifolium")
spacc("majus")
spacc("meonanthum")
spacc("microphyllum")
spacc("molle")
spacc("mollissimum")
spacc("pertegasii")
spacc("pulverulentum")
spacc("sempervirens")
spacc("valentinum")

#-------------------------------------------------------------------
# Accumulation of pairwise interactions.
# Reading the dataset, from a matrix of ** samples of three warbler 
# species: Sylvia atricapilla, Sylvia borin, and Sylvia melanocephala.
#
mat <- read.txt("./data/hr_sylvia.txt")
specpool(mat[,4:20]) # This is the species richness estimates
satr <- subset(mat[,4:20],mat$species=="SATR")
sbor <- subset(mat[,4:20],mat$species=="SBOR")
smel <- subset(mat[,4:20],mat$species=="SMEL")
specpool(satr) # This is the species richness estimates
specpool(sbor) # This is the species richness estimates
specpool(smel) # This is the species richness estimates
#
all<-specaccum(mat[,4:20],method="random")
sa<- specaccum(satr,method="random")
sb<- specaccum(sbor,method="random")
sm<- specaccum(smel,method="random")
#
accumplot <- function (dat, thetitle) {
    plot(dat,ci.type="poly", col="blue", lwd=2, 
         ci.lty=0,ylim=c(0,20), ci.col="lightblue", main=thetitle,
         xlab="Number of samples", ylab="Number of fruit species")
#        boxplot(dat, col="yellow", add=TRUE, pch="+")
}
#
layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE))
accumplot(all,"Sylvia")
accumplot(sa,"SATR")
accumplot(sb,"SBOR")
accumplot(sm,"SMEL")



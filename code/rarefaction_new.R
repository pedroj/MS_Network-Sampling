#######################################################################
#### RESULTS
############

# Species accumulation curve for plant species across frugivore spp.
# Frugivore spp are treated as 'sites'.
# Quantitative NCH matrix

R> sp1<-specaccum(nch_bqtmatr[,2:26])
R> sp2<-specaccum(nch_bqtmatr[,2:26],"random")
R> plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
R> boxplot(sp2, col="yellow", add=TRUE, pch="+")

#########################
### Rarefaction analysis for faecal samples, HR
#########################

hr_defec <-read.table("hr_def.txt",header=TRUE,sep="\t",dec=",",na.strings="NA")
sp1<-specaccum(hr_defec[,2:18])
sp2<-specaccum(hr_defec[,2:18],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")
sp2

#########################
### Rarefaction analysis for faecal samples, HR - NEW ANALYSES
### based on daily dataset of faecal samples
### 15AUG2006
#########################
library(vegan)
setwd("/Users/pedro/Documents/Working/MS_Networks/MS_Network-Rarefaction/Data")
hr_defec <-read.table("Tr_hr_raref_final.txt",header=TRUE,sep="\t",dec=",")
# In hr_defec, rows are census weeks and columns are pairwise interactions
# Census weeks are pooled for two study seasons

#pdf()

sp1<-specaccum(hr_defec,"random")
sp2<-specaccum(hr_defec,"collector")
sp3<-specaccum(hr_defec,"exact")
sp4<-specaccum(hr_defec,"coleman")
sp5<-specaccum(hr_defec,"rarefaction")


# Here I transpose the matrix (rows are interactions, cols are censuses)
sp11<-specaccum(t(hr_defec),"random")
sp21<-specaccum(t(hr_defec),"collector")
sp31<-specaccum(t(hr_defec),"exact")
sp41<-specaccum(t(hr_defec),"coleman")
sp51<-specaccum(t(hr_defec),"rarefaction")

par(mfrow=c(1,5))
x11()
plot(sp4, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp1, col="yellow", add=TRUE, pch="+")
plot(sp1)
plot(sp2)
plot(sp3)
plot(sp4)
plot(sp5)

plot(sp11)
plot(sp21)
plot(sp31)
plot(sp41)
plot(sp51)

sp1<-specaccum(hr_defec[,2:477])
sp2<-specaccum(hr_defec[,2:477],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

##############################################################################

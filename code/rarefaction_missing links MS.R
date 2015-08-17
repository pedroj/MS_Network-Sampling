##############################################################################
# New analyses. Sevilla. 29-30 Apr 2010. Pedro.
##############################################################################
#### RESULTS
############
library(vegan)
# Quantitative HR matrix
# Species accumulation curve for frugivore spp. across plant species
# (Plants are rows, frugivores are columns)
# Plant spp are treated as 'sites' or 'quadrats'.
sp1<-specaccum(hr_qb[,2:17])
sp2<-specaccum(hr_qb[,2:17],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

# Species accumulation curve for plant spp. across frugivore species
# (Frugivores are rows, plants are columns)
# Frugivore spp are treated as 'sites' or 'quadrats'.
sp1<-specaccum(hr_qp[,2:19])
sp2<-specaccum(hr_qp[,2:19],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

# Quantitative NCH matrix
# Species accumulation curve for frugivore spp. across plant species
# (Plants are rows, frugivores are columns)
# Plant spp are treated as 'sites' or 'quadrats'.
sp1<-specaccum(nch_qb[,2:26])
sp2<-specaccum(nch_qb[,2:26],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

# Species accumulation curve for plant spp. across frugivore species
# (Frugivores are rows, plants are columns)
# Frugivore spp are treated as 'sites' or 'quadrats'.
sp1<-specaccum(nch_qp[,2:34])
sp2<-specaccum(nch_qp[,2:34],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

# Quantitative ZACK 2ndyr matrix
# Species accumulation curve for plant spp. across pollinator species
# (Pollinators are rows, plants are columns)
# Pollinator spp are treated as 'sites' or 'quadrats'.
sp1<-specaccum(zack_qa[,2:32])
sp2<-specaccum(zack_qa[,2:32],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

# Species accumulation curve for pollinator spp. across plant species
# (Plants are rows, pollinators are columns)
# Plant spp are treated as 'sites' or 'quadrats'.
sp1<-specaccum(zack_qp[,2:66])
sp2<-specaccum(zack_qp[,2:66],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

##############################################################################
# Accumulation model
# Pool is based on incidences in a series of sites.
# The functions estimate the extrapolated species richness in a species pool, 
# or the number of unobserved species. Function specpool is based on 
# incidences in sample sites, and gives a single estimate for a collection of 
# sample sites (matrix). Function estimateR is based on abundances (counts) 
# on single sample site.

specpool(hr_qb[,2:17])
pool <- poolaccum(zack_qp)
summary(pool, display = "chao")
plot(pool)

s <- sample(nrow(hr_qb[,2:17]), 12)
specpool(hr_qb[,2:17][s, ])

specpool(hr_qp[,2:19])
pool <- poolaccum(zack_qa)
summary(pool, display = "chao")
plot(pool)

specpool(nch_qb[,2:26])
pool <- poolaccum(zack_qp)
summary(pool, display = "chao")
plot(pool)

specpool(nch_qp[,2:34])
pool <- poolaccum(zack_qa)
summary(pool, display = "chao")
plot(pool)

specpool(zack_qp[,2:66])
pool <- poolaccum(zack_qp)
summary(pool, display = "chao")
plot(pool)

specpool(zack_qa[,2:32])
pool <- poolaccum(zack_qa)
summary(pool, display = "chao")
   plot(pool)

## Quantitative model
## The function is based on quantitative samples
estimateR(zack_qp[,2:66])
estimateR(zack_qa[,2:32])

j <- which(colnames(hr_qb) == "Olea_europaea") 
plot(beals(hr_qb, species = j, include = FALSE), hr_qb[, j],
main = "Olea_europaea", xlab = "Probability of occurrence", ylab = "Occurrence")

##############################################################################
### Rarefaction analysis for faecal samples, HR
#
# Rarefaction analysis for faecal samples, HR - NEW ANALYSES
# based on daily dataset of faecal samples
# 15AUG2006
###############
library(vegan)
hr_defec <-read.table("Tr_hr_raref_final.txt",header=TRUE,sep="\t",dec=",")
# In hr_defec, rows are census weeks and columns are pairwise interactions
# Census weeks are pooled for two study seasons
# Dataset represents the number of interactions recorded (out of a possible 
# total of 476) in 41 weekly-pooled faecal samples of frugivorous birds.
#pdf()

sp1<-specaccum(hr_defec,"random")
sp2<-specaccum(hr_defec,"collector")
sp3<-specaccum(hr_defec,"exact")
sp4<-specaccum(hr_defec,"coleman")
sp5<-specaccum(hr_defec,"rarefaction")

sp1<-specaccum(hr_defec[,1:476])
sp2<-specaccum(hr_defec[,1:476],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

## Accumulation model
# This estimates the cumulative number of interactions recorded (pairwise)
pool <- poolaccum(hr_defec)
summary(pool, display = "chao")
plot(pool)
specpool(t(hr_defec))

pool <- poolaccum(nchcum)
summary(pool, display = "chao")
specpool(nchcum)

pool <- poolaccum(zackq)
specpool(zackq)
specpool(zackcum_int)
summary(pool, display = "chao")

# Use the qualitative 0-1 matrix
temp<-(hr_defec > 0) * 1
pool <- poolaccum(temp)
summary(pool, display = "chao")
plot(pool)
specpool(temp)

## Quantitative model
estimateR(hr_defec)
pp<-estaccumR(hr_defec)
##############################################################################

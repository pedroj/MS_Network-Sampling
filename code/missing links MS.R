##############################################################################
# New analyses. Sevilla. 29-30 Apr 2010. Pedro.
##############################################################################
#### RESULTS
############
library(vegan)
# Use vectorized quantitative matrix to estimate the accumulation of pairwise 
# interactions from the total number of observations recorded. I.e., a "list 
# of pairwwise interactions" with the frequency of each one of the possible 
# pairwise interactions (A*P).
# NOTE that this method includes all potential interactions (A*P) without taking into account forbidden links.
source("pairwise.R")
# Hato Raton
temp<-pairwise(hrq)              # List of intraction names
hr_int<-as.vector(hrq)           # Vectorized interaction matrix
names(hr_int)<-temp              # Named vector of interactions

# I use function estimateR, which is based on abundances (counts) 
# on single sample site.
estimateR(hr_int)
source("plot_int_frqdistr.R")
plot.intrank(hr_int,freq=TRUE, rank=T)

# Nava Correhuelas
temp<-pairwise(nchq)              # List of intraction names
nch_int<-as.vector(nchq)          # Vectorized interaction matrix
names(nch_int)<-temp              # Named vector of interactions

# I use function estimateR, which is based on abundances (counts) 
# on single sample site.
estimateR(nch_int)
plot.intrank(nch_int,freq=TRUE, rank=T)

# Zackenberg
temp<-pairwise(zackq)              # List of intraction names
zack_int<-as.vector(zackq)         # Vectorized interaction matrix
names(zack_int)<-temp              # Named vector of interactions

# I use function estimateR, which is based on abundances (counts) 
# on single sample site.
estimateR(zack_int)
plot.intrank(zack_int,freq=TRUE, rank=T)

##############################################################################
# Accumulation model
# Pool is based on incidences in a series of sites.
# The functions estimate the extrapolated species richness in a species pool, 
# or the number of unobserved species. Function specpool is based on 
# incidences in sample sites, and gives a single estimate for a collection of 
# sample sites (matrix). Function estimateR is based on abundances (counts) 
# on single sample site.

### Analysis for faecal samples, HR
# NEW ANALYSES. Based on daily dataset of faecal samples, pooled by week.
# 15AUG2006
library(vegan)

# HATO RATON
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
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",      xlab="Time (weeks)", ylab="Number of disctint pairwise interactions",main="Hato Ratón")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

# NAVA CORREHUELAS
# In nchcum, rows are censuses and columns are pairwise interactions
# Census weeks are pooled for two study seasons
# Dataset represents the number of interactions recorded (out of a possible 
# total of 825) in 54 censuses of feeding records of frugivorous birds.
# Observations were carried out during the period 1986-1998.
#pdf()

sp1<-specaccum(nchcum,"random")
sp2<-specaccum(nchcum,"collector")
sp3<-specaccum(nchcum,"exact")
sp4<-specaccum(nchcum,"coleman")
sp5<-specaccum(nchcum,"rarefaction")

sp1<-specaccum(nchcum)
sp2<-specaccum(nchcum,"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",      xlab="Number of censuses (1988-1998)", ylab="Number of disctint pairwise interactions",main="Nava Correhuelas")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

## Accumulation model
# This estimates the cumulative number of interactions recorded (pairwise)
pool <- poolaccum(nchcum)
summary(pool, display = "chao")
plot(pool)
specpool(nchcum)

# Use the qualitative 0-1 matrix
temp<-(hr_defec > 0) * 1
pool <- poolaccum(temp)
summary(pool, display = "chao")
plot(pool)
specpool(temp)

specpool(nch_int)

## Quantitative model
estimateR(hr_defec)
pp<-estaccumR(hr_defec)
#-----------------------------------------------------------------------------
# ZACKENBERG. This is a binary matrix.
sp1<-specaccum(zackcum_int,"random")
sp2<-specaccum(zackcum_int,"collector")
sp3<-specaccum(zackcum_int,"exact")
sp4<-specaccum(zackcum_int,"coleman")
sp5<-specaccum(zackcum_int,"rarefaction")

sp1<-specaccum(zackcum_int)
sp2<-specaccum(zackcum_int,"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",      xlab="Time (days)", ylab="Number of disctint pairwise interactions",
main="Zackenberg, 2nd year")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

## Accumulation model
# This estimates the cumulative number of interactions recorded (pairwise)
pool <- poolaccum(zackcum_int)
summary(pool, display = "chao")
plot(pool)
specpool(zackcum_int)

##############################################################################

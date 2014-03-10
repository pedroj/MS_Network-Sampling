#########################################################################################
### Rarefaction analysis. Aug 2005
#########################################################################################

#####
Analysis based on function specaccum{vegan}.
#####

#########################################################################################
Species Accumulation Curves
Description
Function specaccum finds species accumulation curves or the number of species for a certain number of sampled sites or individuals.
Usage
specaccum(comm, method = "exact", permutations = 100, ...)
## S3 method for class 'specaccum':
plot(x, add = FALSE, ci = 2, ci.type = c("bar", "line", "polygon"), 
    col = par("fg"), ci.col = col, ci.lty = 1, xlab = "Sites", 
    ylab = x$method, ...)
## S3 method for class 'specaccum':
boxplot(x, add = FALSE, ...)
Arguments
comm
Community data set.
method
Species accumulation method (partial match). Method "collector" adds sites in the order they happen to be in the data, "random" adds sites in random order, "exact" finds the expected (mean) species richness, "coleman" finds the expected richness following Coleman et al. 1982, and "rarefaction" finds the mean when accumulating individuals instead of sites.
permutations
Number of permutations with method = "random".
x
A specaccum result object
add
Add to an existing graph.
ci
Multiplier used to get confidence intervals from standard deviation (standard error of the estimate). Value ci = 0 suppresses drawing confidence intervals.
ci.type
Type of confidence intervals in the graph: "bar" draws vertical bars, "line" draws lines, and "polygon" draws a shaded area.
col
Colour for drawing lines.
ci.col
Colour for drawing lines or filling the "polygon".
ci.lty
Line type for confidence intervals or border of the "polygon".
xlab,ylab
Labels for x and y axis.
...
Other parameters to functions.
Details
Species accumulation curves (SAC) are used to compare diversity properties of community data sets using different accumulator functions. The classic method is "random" which finds the mean SAC and its standard deviation from random permutations of the data, or subsampling without replacement (Gotelli & Colwell 2001). The "exact" method finds the expected SAC using the method of Kindt (2003), and its standard deviation. Method "coleman" finds the expected SAC and its standard deviation following Coleman et al. (1982). All these methods are based on sampling sites without replacement. In contrast, the method = "rarefaction" finds the expected species richness and its standard deviation by sampling individuals instead of sites. It achieves this by applying function rarefy with number of individuals corresponding to average number of individuals per site.
The function has a plot method. In addition, method = "random" has summary and boxplot methods.
Value
The function returns an object of class "specaccum" with items:
call
Function call.
method
Accumulator method.
sites
Number of sites. For method = "rarefaction" this is the average number of sites corresponding to a certain number of individuals.
richness
The number of species corresponding to number of sites. With method = "collector" this is the observed richness, for other methods the average or expected richness.
sd
The standard deviation of SAC (or its standard error). This is NULL in method = "collector", and it is estimated from permutations in method = "random", and from analytic equations in other methods.
perm
Permutation results with method = "random" and NULL in other cases. Each column in perm holds one permutation.
Note
The SAC with method = "exact" was developed by Roeland Kindt, and its standard deviation by Jari Oksanen (both are unpublished). The method = "coleman" underestimates the SAC because it does not handle properly sampling without replacement. Further, its standard deviation does not take into account species correlations, and is generally too low.
Author(s)
Roeland Kindt r.kindt@cgiar.org and Jari Oksanen.
References
Coleman, B.D, Mares, M.A., Willis, M.R. & Hsieh, Y. (1982). Randomness, area and species richness. Ecology 63: 1121–1133.
Gotellli, N.J. & Colwell, R.K. (2001). Quantifying biodiversity: procedures and pitfalls in measurement and comparison of species richness. Ecol. Lett. 4, 379–391.
Kindt, R. (2003). Exact species richness for sample-based accumulation curves. Manuscript.
See Also
rarefy. Underlying graphical functions are boxplot, matlines, segments and polygon.
Examples
data(BCI)
sp1 <- specaccum(BCI)
sp2 <- specaccum(BCI, "random")
sp2
summary(sp2)
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")

#########################################################################################
#### RESULTS
############

# Species accumulation curve for plant species across frugivore spp.
# Frugivore spp are treated as 'sites'.
# Quantitative NCH matrix

R> sp1<-specaccum(nch_bqtmatr[,2:26])
R> sp2<-specaccum(nch_bqtmatr[,2:26],"random")
R> plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
R> boxplot(sp2, col="yellow", add=TRUE, pch="+")
R> sp2
Species Accumulation Curve
Accumulation method: random, with 100 permutations
Call: specaccum(comm = nch_bqtmatr[, 2:26], method = "random") 

                                                                                    
Sites    1.0000 2.0000 3.0000  4.0000  5.000  6.0000  7.0000  8.0000  9.0000 10.0000
Richness 4.3200 7.8200 9.6900 11.6900 12.870 14.0800 14.9400 15.8700 16.6300 17.2400
sd       3.5216 4.3214 4.1844  4.2657  3.876  3.8262  3.9076  3.4573  3.3534  3.1627
                                                                                
Sites    11.0000 12.0000 13.0000 14.0000 15.0000 16.0000 17.0000 18.0000 19.0000
Richness 17.8600 18.3600 18.9300 19.4000 20.0100 20.5800 21.0800 21.3500 21.6700
sd        3.1367  3.1607  3.0625  2.9542  2.7469  2.5033  2.3341  2.2264  2.1037
                                                                                
Sites    20.0000 21.0000 22.0000 23.0000 24.0000 25.0000 26.0000 27.0000 28.0000
Richness 22.0000 22.2200 22.4700 22.9200 23.1500 23.3700 23.7000 23.8700 24.0700
sd        1.9122  1.8618  1.8060  1.8184  1.8112  1.7154  1.5602  1.3974  1.3353
                                             
Sites    29.0000 30.0000 31.00000 32.00000 33
Richness 24.2300 24.4300 24.64000 24.85000 25
sd        1.2132  1.0469  0.71802  0.47937  0

# Qualitative matrix
sp1<-specaccum(nch_01bmatr[,2:26])
sp2<-specaccum(nch_01bmatr[,2:26],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")
sp2

### Analysis for the two communities, based on bird qt data
par(mfrow=c(1,2))
sp11<-specaccum(nch_bqtmatr[,2:26])
sp12<-specaccum(nch_bqtmatr[,2:26],"random")
plot(sp11, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",main="Nava Correhuelas Dataset")
boxplot(sp12, col="yellow", add=TRUE, pch="+")
sp21<-specaccum(hr_bqtmatr[,2:17])
sp22<-specaccum(hr_bqtmatr[,2:17],"random")
plot(sp21, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",main="Hato Ratón Dataset")
boxplot(sp22, col="yellow", add=TRUE, pch="+")


### Birds and Plants - NCH
par(mfrow=c(2,2))
sp11<-specaccum(nch_bqtmatr[,2:26])
sp12<-specaccum(nch_bqtmatr[,2:26],"random")
plot(sp11, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",main="Frugivore data - NCH")
boxplot(sp12, col="yellow", add=TRUE, pch="+")
sp21<-specaccum(nch_plqtmatr[,2:33])
sp22<-specaccum(nch_plqtmatr[,2:33],"random")
plot(sp21, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",main="Plant data - NCH")
boxplot(sp22, col="yellow", add=TRUE, pch="+")

### Birds and Plants - HATO
#par(mfrow=c(1,2))
sp11<-specaccum(hr_bqtmatr[,2:17])
sp12<-specaccum(hr_bqtmatr[,2:17],"random")
plot(sp11, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",main="Frugivore data - HR")
boxplot(sp12, col="yellow", add=TRUE, pch="+")
sp21<-specaccum(hr_plqtmatr[,2:17])
sp22<-specaccum(hr_plqtmatr[,2:17],"random")
plot(sp21, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue",main="Plant data - HR")
boxplot(sp22, col="yellow", add=TRUE, pch="+")

#########################
### Rarefecation analysis for faecal samples, HR
#########################

hr_defec <-read.table("hr_def.txt",header=TRUE,sep="\t",dec=",",na.strings="NA")
sp1<-specaccum(hr_defec[,2:18])
sp2<-specaccum(hr_defec[,2:18],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")
sp2

#########################
### Rarefecation analysis for faecal samples, HR - NEW ANALYSES
#########################

hr_defec <-read.table("hr_def.txt",header=TRUE,sep="\t",dec=",",na.strings="NA")
sp1<-specaccum(hr_defec[,2:18])
sp2<-specaccum(hr_defec[,2:18],"random")
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp2, col="yellow", add=TRUE, pch="+")
sp2

#########################################################################################



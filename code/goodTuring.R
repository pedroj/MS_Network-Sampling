# Good-Turing Frequency Estimation
# Non-parametric empirical Bayes estimates of the frequencies of observed 
# (and unobserved) species.
#
require(edgeR)
# Details
# 
# Observed counts are assumed to be Poisson distributed. Using an non-parametric empirical Bayes strategy, the algorithm evaluates the posterior expectation of each species mean given its observed count. The posterior means are then converted to proportions. In the empirical Bayes step, the counts are smoothed by assuming a log-linear relationship between frequencies and frequencies of frequencies. The fundamentals of the algorithm are from Good (1953). Gale and Sampson (1995) proposed a simplied algorithm with a rule for switching between the observed and smoothed frequencies, and it is Gale and Sampson's simplified algorithm that is implemented here. The number of zero values in x are not used in the algorithm, but is returned by this function.
# 
# Sampson gives a C code version on his webpage at http://www.grsampson.net/RGoodTur.html which gives identical results to this function.
# 
# goodTuringPlot plots log-probability (i.e., log frequencies of frequencies) versus log-frequency.
# # 
# goodTuringProportions runs goodTuring on each column of data, then uses the results to predict the proportion of each gene in each library.
# 
# Value
# 
# goodTuring returns a list with components
# 
# count	
# observed frequencies, i.e., the unique positive values of x
# 
# n	
# frequencies of frequencies
# 
# n0	
# frequency of zero, i.e., number of zeros found in x
# 
# proportion	
# estimated proportion of each species given its count
# 
# P0	
# estimated combined proportion of all undetected species
# 
# goodTuringProportions returns a matrix of proportions of the same size as counts.
# 
# Author(s)
# 
# Aaron Lun and Gordon Smyth, adapted from Sampson's C code from http://www.grsampson.net/RGoodTur.html
# 
# References
# 
# Gale, WA, and Sampson, G (1995). Good-Turing frequency estimation without tears. Journal of Quantitative Linguistics 2, 217-237.
#-----------------------------------------------------------------------
#  True means of observed species
lambda <- rnbinom(10000,mu=2,size=1/10)
lambda <- lambda[lambda>1]

#  Oberved frequencies
Ntrue <- length(lambda)
x <- rpois(Ntrue, lambda=lambda)
freq <- goodTuring(x)
goodTuringPlot(x)

# Direct input
source("./data/interact_vectors.txt")
nchff<-goodTuring(as.vector(nch), conf=1.96)

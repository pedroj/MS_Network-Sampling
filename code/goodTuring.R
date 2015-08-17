# Good-Turing Frequency Estimation
# Non-parametric empirical Bayes estimates of the frequencies of observed 
# (and unobserved) species.
#
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
#-------------------------------------------------------------------------
#  True means of observed species
lambda <- rnbinom(10000,mu=2,size=1/10)
lambda <- lambda[lambda>1]

#  Oberved frequencies
Ntrue <- length(lambda)
x <- rpois(Ntrue, lambda=lambda)
freq <- goodTuring(x)
goodTuringPlot(x)

# Direct input from clipboard
nch<-c(14,2,3,56,5,2,2,13,2,19,21,2,1,29,1,36,1,4,2,3,175,1,1,2,1,1,12,1,1,1,91,49,1,2,8,6,35,941,9,111,2,47,7,111,3,4,18,19,12,184,12,62,3,3,8,14,4,1,2,32,1,182,2,1,1,2,1,1,35,2,2,37,216,7,1,2,9,1,1,9,1,12,1,3,31,146,143,21,27,19,1,1,583,2,6,52,62,12,1,1,12,85,8,19,112,423,2,9,183,62,68,58,11,19,15,265,8,17,2,123,16,2,829,22,1,2,79,1,46,4,2,135,1,7,4,82,1,3,1,14,1,1,391,1,12,22,1,33,1,26,1,1,16,139,5,2,1,12,783,1,2,3,4,14,61,2,2,12,37,7,37,1,3,4,11,74,1,17,41,4,5,16,7,18,83,8,3,4,8,8,5)

nchff<-goodTuring(as.vector(nch), conf=1.96)

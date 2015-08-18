# Element-wise multiplication of two vectors.
# Generating vectors for lognormal distributions
ElementwiseMultiply <- function ( a, b )
{
    c = NULL ;
    for ( i in 1:length(a) )
        for ( j in 1:length(b) )
    {
        prod = ( a[i] * b[j] ) ;
        c= cbind(c,prod)
    }
    return ( c );
}

# CODE
pa<-rlnorm(100, meanlog = 0, sdlog = 1)   # Lognormal A
pp<-rlnorm(30, meanlog = 0, sdlog = 1)   # Lognormal P
ppa<- pa/sum(pa)
ppp<- pp/sum(pp)
prod<-as.vector(ElementwiseMultiply(ppa,ppp))
hist(prod)
summary(prod)




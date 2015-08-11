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
pp<-rlnorm(100, meanlog = 0, sdlog = 1)   # Lognormal P
prod<-as.vector(ElementwiseMultiply(pa,pp))
hist(prod)
summary(prod)

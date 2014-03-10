# Code for automatically plotting isolines of effectiveness
# landscapes.
# Based on code for automatic calculation of isolines 
# by Bernardo Santos. UNESP, Rio Claro, Brazil. 3 Dec 2013.

# NOT-Log scaled axes. Data for Archontophoenix cunninghamiani.
sde <- read.table("/media/windows/Users/ber/Documents/Documentos_ber/Atividades 2013/Doutorado/Disciplinas/Frugivoria_Mauro/R codes/data/sde.txt", header=T, sep="\t", dec=".", na.strings="NA")

plot(sde$vish,sde$frutot,xlab="Visit rate",
     ylab="No. fruits/visit (total handled)", 
     main="Quantitative component",ylim=c(0,max(sde$frutot)), xlim=c(0,max(sde$vish)),type="n")
#, col = terrain.colors(4:8)[qc$plant]
#text(vis, frv, plant, cex=0.6, pos=4, col="red")
points(sde$vish,sde$frutot,
       pch=c(1,2,4,6,7)[sde$fam])
#legend("topleft", title="Family",
#       c("Mimidae","Psittacidae","Thraupidae","Turdidae","Tyrannidae"), pch=c(1,2,4,6,7),horiz=F,ncol=1)

nlines <- 10 # number of isolines wanted
alfa <- max(sde$frutot)/max(sde$vish) # slope of a straight line linking (left,bottom) to (right,above) corners of the graphic
xval <- seq(0, max(sde$vish), length.out=(nlines+1))[2:(nlines+1)] # sequence of (nlines) regular spaced x values for the isoclines
isoc <- (xval*xval*alfa) # values of the isoclines

vis1<-seq(0,2,length.out=1000)
for(i in 1:nlines)
{
  lines(vis1, isoc[i]/vis1)
  text(0.9*max(sde$vish), isoc[i]/(0.9*max(sde$vish)), paste("QC = ", round(isoc[i], digits=1)), col="red")
}


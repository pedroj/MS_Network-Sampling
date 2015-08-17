##############################################################################
# Code for setting up the accumulative sampling of Zackenberg.
# 1May2010. Pedro. Sevilla.
##############################################################################
# Read first day matrix and initialize names, etc.
tt1<-as.matrix(read.table(pipe("pbpaste"),header=F,dec="."))
pp3<-list(c("Aedes impiger","Aedes nigripes","Bombus hyperboreus/polaris","Brachypogon sp.","Bradysia spp.","Clossiana chariclea","Colias hecla","Cricotopus sp.","Cryptinae sp.","Culicoides sp.","Delia echinata","Diplazontinae sp.","Drymeia groenlandica","Drymeia segnis","Entephria puncticeps","Eukiefferiella sp.","Eupeodes curtus","Eupeodes nigroventris","Forcipomyia sp.","Lasiopiophila pilosa","Limnophora sinuata","Limnophyes brachytomus","Limnophyes spp.","Lophosceles minimus","Megaselia sp.","MEGASPILIDAE Genus sp.","Microgasterinae sp.","Neoleria prominens","Nysius groenlandicus","Olethreutes inquitana","Olethreutes mengelana","Orthocladiinae indet.","Paraphaenocladius spp.","Parasyrphus tarsatus","Peleteria aenea","Phaonia bidentata","Platycheirus carinatus","Platycheirus lundbecki","Plebeius glandon spp. franklinii","Polia richardsoni","Procladius sp.","Pseudosmittia sp.","Rhamphomyia filicauda","Rhamphomyia nigrita","Rheocricotopus sp.","Scathophaga furcata","Smittia spp. ","Spilogona almqvistii","Spilogona arcticola","Spilogona deflorata","Spilogona denudata","Spilogona dorsata","Spilogona extensa","Spilogona malaisei","Spilogona melanosoma","Spilogona micans","Spilogona sanctipauli","Spilogona tornensis","Spilogona tundrae","Stenomacrus sp. A","Stenomacrus sp. B","Sympistis lapponica","Sympistis zetterstedti","Syngrapha parilis","Zaphne frontata"),c("Arenaria pseudofrigida","Armeria scabra","Arnica angustifolia","Cassiope tetragona","Cerastium arcticum","Chamaenerion latifolium","Cochlearia groenlandica","Draba arctica","Draba lactea","Dryas octopetala","Erigeron compositus","Lesquerella arctica","Melandrium triflorum","Papaver radicatum","Pedicularis flammea","Pedicularis hirsuta","Polygonum viviparum","Potentilla hyparctica","Potentilla rubricaulis","Ranunculus sulphureus","Rhododendron lapponicum","Salix arctica","Saxifraga caespitosa","Saxifraga cernua","Saxifraga hirculus","Saxifraga nivalis","Saxifraga oppositifolia","Silene acaulis","Stellaria longipes","Taraxacum phymatocarpum","Vaccinium uliginosum"))
dimnames(tt1)<-pp3
temp<-pairwise(tt1)             # List of intraction names
zackcum_int<-as.vector(tt1)     # Vectorized interaction matrix
names(zackcum_int)<-temp        # Named vector of interactions

# Keep reading daily matrices, transform to columns and ccbind.
# tt will hold each matrix from the clipboard.
tt<-as.matrix(read.table(pipe("pbpaste"),header=F,dec="."))
zackcum_int<-data.frame(cbind(zackcum_int,as.vector(tt)))
colnames(zackcum_int)<-c("Day1","Day2","Day5","Day7","Day8","Day9","Day13","Day23","Day26","Day28","Day29","Day31","Day34","Day35","Day36","Day37","Day38","Day42","Day43","Day45","Day50","Day54","Day55","Day65","Day66","Day69")
#-----------------------------------------------------------------------------










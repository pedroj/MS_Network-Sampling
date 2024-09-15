# Sampling completeness analysis with iNEXT.link.
# Sevilla, 16 Jun 2023.
# 
library(here)
library(iNEXT.link)

### Nava Correhuelas
nchq<- read.table(here("data/nchq.txt"), header=F, sep="\t", dec=".", 
                  na.strings="NA")

### Hato Raton
hrq<- read.table(here("data/hrq.txt"), header=F, sep="\t", 
                 dec=".",na.strings="NA")
hr_GTS<- read.table(here("data/HR_GTS.csv"), header=F, sep=",", 
                    dec=".", na.strings="NA")
hr_MMS<- read.table(here("data/HR_MMS.csv"), header=F, sep=",", 
                    dec=".", na.strings="NA")
hr_QC<- read.table(here("data/HR_QC.csv"), header=F, sep=",", 
                   dec=".", na.strings="NA")
hr_QS<- read.table(here("data/HR_QS.csv"), header=F, sep=",", 
                   dec=".", na.strings="NA")

### Nava Noguera
nnogq<- read.table(here("data/sdw03_adj_vis.csv"), header=F, sep=",",
                   dec=".", na.strings="NA")

### Zackenberg
zackq<- read.table(here("data/zackq.txt"),header=F,sep="\t",dec=".",
                   na.strings="NA")

### Individual-based networks
indb_01<- read.table(here("data/indiv-based_datasets/01_01_int.csv"), 
                     header=T, sep=",", dec=".", na.strings="NA")
indb_01<- indb_01[,2:28]
stindb_01<- read.csv(here("data/indiv-based_datasets/webs_gts/st01_01_int.csv"), 
                       header=T, sep=",", dec=".", na.strings="NA")
stindb_01<- t(stindb_01[,2:28])

# Create list of data frame using list()
listOfDataframe = list(#nch= t(nchq)), 
    stindb_01)#, 
                       #indb_01= stindb_01)

## Taxonomic diversity
DataInfo.link(
    data= listOfDataframe,
    diversity = "TD",
    row.tree = NULL,
    col.tree = NULL,
    row.distM = NULL,
    col.distM = NULL
)

output1 = iNEXT.link(data = listOfDataframe, diversity = 'TD', 
                     q = c(0, 1, 2))
output1
ggiNEXT.link(
    output1,
    type = c(1, 2, 3),
    facet.var = "Assemblage",
    color.var = "Order.q"
)

output1 = AO.link(data = listOfDataframe, diversity = 'TD', q = seq(0, 2, 0.2))
output1

ggAO.link(output1)

outcome<- Completeness.link(
    data= listOfDataframe,
    q = seq(0, 2, 0.2),
    conf = 0.95,
    nboot = 30)

ggCompleteness.link(outcome)

output1 <- estimateD.link(listOfDataframe, diversity = 'TD', 
                          base = "coverage", level = 0.7, nboot = 30)
output1

output1 = iNEXTbeta.link(data = listOfDataframe, diversity = 'TD', 
                         level = seq(0.5, 0.9, 0.4), q = c(0, 1, 2))
output1

# Analysis with INEXT.3D
# diversity = 'TD'
out1 <- iNEXT3D(hrq, diversity = 'TD', q = c(0,1,2), datatype = "abundance")
ggiNEXT3D(out1, facet.var = "Assemblage")

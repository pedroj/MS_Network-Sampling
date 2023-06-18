# Sampling completeness analysis with iNEXT.link.
# Sevilla, 16 Jun 2023.
# 
library(here)
library(iNEXT.link)

### Nava Correhuelas
nchq<- read.table(here("data/nchq.txt"), header=F, sep="\t", dec=".", na.strings="NA")

### Hato Raton
hrq<- read.table(here("data/hrq.txt"), header=F, sep="\t", dec=".", na.strings="NA")

### Nava Noguera
nnogq<- read.table(here("data/sdw03_adj_vis.csv"), header=F,sep=",",dec=".",na.strings="NA")

### Zackenberg
zackq<- read.table(here("data/zackq.txt"),header=F,sep="\t",dec=".",na.strings="NA")

# Create list of data frame using list()
listOfDataframe = list(nch= t(nchq), hr= t(hrq), nnog= nnogq, zack= t(zackq))

## Taxonomic diversity
output1 = AO.link(data = listOfDataframe, diversity = 'TD', q = seq(0, 2, 0.2))
output1

ggAO.link(output1)

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

outcome<- Completeness.link(
    data= listOfDataframe,
    q = seq(0, 2, 0.2),
    conf = 0.95,
    nboot = 30)

ggCompleteness.link(outcome)

output1 <- estimateD.link(listOfDataframe, diversity = 'TD', 
                          base = "coverage", level = 0.7, nboot = 30)
output1

output1 = iNEXTbeta.link(data = listOfDataframe, diversity = 'TD', level = seq(0.5, 0.9, 0.4), q = c(0, 1, 2))
output1


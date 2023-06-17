
### NAVA CORREHUELAS
nchq<-as.matrix(read.table(here("data/nchq.txt"),header=F,sep="\t",dec=".",na.strings="NA"))

### HATO RATON
hrq<-as.matrix(read.table(here("data/hrq.txt"),header=F,sep="\t",dec=".",na.strings="NA"))

### ZACKENBERG
zackq<-as.matrix(read.table(here("data/zackq.txt"),header=F,sep="\t",dec=".",na.strings="NA"))

# Create list of data frame using list()
listOfDataframe = list(nch= nchq, hr=hrq, zack= zackq)

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


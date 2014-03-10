#------------------------------------------------------------
# Map of interaction patterns.
# Here we get the map from Google Earth directly and plot our stuff.
#------------------------------------------------------------
library(ggmap)
# Data
# Lat and Long Horto: -22.413350° -47.524164°. These are the 
# coordinates of the Horto area where we did the focal observations.
# Read the data table here.
palmmap <- read.table("/Users/pedro/Dropbox/Frugivoria 2013/R codes/data/map.txt", header=T, sep="\t", dec=".", na.strings="NA")

# MAPS --------------------------------------------------------
# Plotting the locations of a population ----------------------
# plot(mydata, stratum="Population", 
#              Longitude="Longitude", Latitude="Latitude", 
#              map.source="google", map.type="terrain", 
#              color="black", zoom=8)

# Test
location <- c(mean(palmmap$lon), mean(palmmap$lat))
plot(palmmap$lon, palmmap$lat)

# Using ggplot2
require(ggmap)
location <- c(-47.523861, -22.413608)
#location <- c(mean(palmmap$lon), mean(palmmap$lat))

location
map <- get_map(location= c(lon= -47.523861, lat= -22.413608), 
               maptype = "satellite", zoom = 18)
map <- get_map(location, maptype = "satellite", zoom = 18)

ggmap(map, fullpage = TRUE)

p <- ggmap(map)
p + geom_point(aes(x = lon, y = lat), data= palmmap,
               color = "white", size = 4, alpha = 1) +
    geom_point(aes(x = lon, y = lat, 
                   colour = factor(palmmap$palm)), 
               data= palmmap,  
               #      shape = as.factor(gsdata$Population), 
               size = 5.5, alpha = 0.5) +
    xlab("Longitude") + ylab("Latitude")

# Bubble plots according to visitation data
# Bubble plots
p <- ggmap(map)
#p + xlab("Longitude") + ylab("Latitude")
p + geom_point(aes(x = lon, y = lat), 
               data= palmmap,
               color = "white", 
               size = 0.2*(palmmap$psitt_vis), 
               alpha = 0.6) +
    geom_point(aes(x = lon, y = lat, 
               colour = factor(palmmap$palm)), 
               data= palmmap,  
               size = 0.2*(palmmap$psitt_vis*0.85), 
               alpha = 0.6) +
    xlab("Longitude") + ylab("Latitude")


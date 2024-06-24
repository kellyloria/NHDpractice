## ---------------------------
## Exploring site dissimilarity based on watershed characteristics 
## Author: Kelly A. Loria
## Date Created: 2021-01-07
## Email: kelly.loria@colorado.edu
##
## ---------------------------
## Load packages:
library(ggplot2)
library(dplyr)
library(lubridate)
library(tidyverse)
library(vegan)
library(ape)
library(devtools)
library(sp)
## ---------------------------
# File path setup:
#if (dir.exists('~/Users/kellyloria/Documents/Publications/Historical_Limno')){
#  inputDir<- '~/Users/kellyloria/Documents/Publications/Historical_Limno'
#  outputDir<- '~/Users/kellyloria/Documents/Publications/Historical_Limno/DataShare' 
#}

## ---------------------------
# I. Read in data
d <- read.csv(paste0(inputDir,"/NHD_output/MSM_AllAttributesNHD.csv"))
names(d)
summary(d)

# Replace any values greater than 0 to 1 and select numeric values only
d.pr <- prcomp(d[c(9:40)], center = TRUE)
summary(d.pr)
?prcomp

screeplot(d.pr, type = "l", npcs = 15, main = "Screeplot of the first 10 PCs")
abline(h = 1, col="red", lty=5)
legend("topright", legend=c("Eigenvalue = 1"),
       col=c("red"), lty=5, cex=0.6)

cumpro <- cumsum(d.pr$sdev^2 / sum(d.pr$sdev^2))
plot(cumpro[0:15], xlab = "PC #", ylab = "Amount of explained variance", main = "Cumulative variance plot")
abline(v = 6, col="blue", lty=5)
abline(h = 0.9986797, col="blue", lty=5)
legend("topleft", legend=c("Cut-off @ PC6"),
       col=c("blue"), lty=5, cex=0.6)


plot(d.pr$x[,1],d.pr$x[,2], xlab="PC1 (44.3%)", ylab = "PC2 (19%)", main = "PC1 / PC2 - plot")



library("factoextra")
library(ggplot2)
fviz_pca_ind(d.pr, geom.ind = "point", pointshape = 21, 
             pointsize = 2, 
             fill.ind = d$Zone, 
             col.ind = "black", 
             palette = "jco", 
             addEllipses = TRUE,
             label = "var",
             col.var = "black",
             repel = TRUE,
             legend.title = "Diagnosis") +
  ggtitle("2D PCA-plot from 30 feature dataset") +
  theme(plot.title = element_text(hjust = 0.5))





## ---------------------------
# II. Some community comp analysis:
# Perform a NMDS and plot the results
df4 %>%
  metaMDS(trace = F) %>%
  ordiplot(type = "none") %>%
  text("sites")

# Calculate a distance matrix. See PCOA for more information about the distance measures
# Here we use jaccard for P/A
dist <- vegdist(df4,  method = "jaccard")

# In this part, we define a function NMDS.scree() that automatically 
# performs a NMDS for 1-10 dimensions and plots the nr of dimensions vs the stress
NMDS.scree <- function(x) { #where x is the name of the data frame variable
  plot(rep(1, 10), replicate(10, metaMDS(x, autotransform = F, k = 1)$stress), xlim = c(1, 10),ylim = c(0, 0.30), xlab = "# of Dimensions", ylab = "Stress", main = "NMDS stress plot")
  for (i in 1:10) {
    points(rep(i + 1,10),replicate(10, metaMDS(x, autotransform = F, k = i + 1)$stress))
  }
}

# Use the function that we just defined to choose the optimal nr of dimensions
NMDS.scree(dist)

# we`ll set a seed to make the results reproducible
set.seed(2)

# Here, we perform the analysis and check the result
NMDS1 <- metaMDS(dist, k = 2, trymax = 100, trace = F)
NMDS1
plot(NMDS1, type = "t")

NMDS3 <- metaMDS(df4, k = 2, trymax = 100, trace = F, autotransform = FALSE, distance="jaccard")
plot(NMDS3)
plot(NMDS3, display = "sites", type = "n")
points(NMDS3, display = "sites", col = "red", cex = 1.25)
text(NMDS3, display ="species")

# Alternatively, you can use the functions ordiplot and orditorp
ordiplot(NMDS3, type = "n")
orditorp(NMDS3, display = "species", col = "red", air = 0.01)
orditorp(NMDS3, display = "sites", cex = 1.1, air = 0.01)

## ---------------------------
# III. Read in environmental data
phy <- read.csv("/Users/kellyloria/Documents/Publications/Historical_Limno/RMNP15_CL16_physdat_v2.csv", header=T)
names(phy)
summary(phy)

phy1 <- dplyr::select(phy, 2:6)
names(phy1)

dim(phy1)

# The function envfit will add the environmental variables as vectors to the ordination plot
ef <- envfit(NMDS3, phy1, permu = 999)
ef

# The two last columns are of interest: the squared correlation coefficient and the associated p-value
# Plot the vectors of the significant correlations and interpret the plot
plot(NMDS3, type = "t", display = "sites")
plot(ef, p.max = 0.05)
text(NMDS3, display ="species")

## ---------------------------
# IV. Play around with mantel tests

# lat long distance for visit 1
coords <- phy[, c("lat", "long", "Lake.Name")]
names(coords) <- c("lat", "long", "site")
s.coord <- coordinates(coords[, c("long", "lat")])
dis_v1 <- dist(s.coord[, c("long", "lat")], method = "euclidean") 
max(dis_v1)
min(dis_v1)

# Lat Long and Elevation distance for 1 visit to visualize 
xcood1 <- phy$lat
ycood1 <- phy$long
elev1 <- phy$Elevation..m.
dat2 <- cbind(xcood1, ycood1, elev1)

elev_dis1 <- dist(dat2)
max(elev_dis1)
min(elev_dis1)

# plot the lat long distance v. sp. distance
# dist from earlier cod chunk 
plot(c(dis_v1), c(dist), # where dis_v3 = spatial matrix and hjac = species dissim matrix,
     main="Zoop dissimilarity decay (lat and long)",cex.lab=1.6, cex.axis=1.4, cex.main=1.8)
abline(lm(dist ~ dis_v1))
mantel(dis_v1, dist) 

# plot the elevation distance v. sp. distance
# dist from earlier cod chunk 
plot(c(elev_dis1), c(dist), # where dis_v3 = spatial matrix and hjac = species dissim matrix,
     main="Zoop dissimilarity decay (elevation)",cex.lab=1.6, cex.axis=1.4, cex.main=1.8)
abline(lm(dist ~ elev_dis1))
mantel(elev_dis1, dist) # elevation not significant  

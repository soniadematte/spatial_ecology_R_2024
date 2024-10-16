# How to calculate the densily of individuals in a population

# installing the spatstat package
install.packages("spatstat")

# recalling the package
library(spatstat)

# dataset
bei

plot(bei)

plot(bei, pch=19)
plot(bei, pch=19, cex=0.5)

bei.extra
plot(bei.extra)

#extracting data
elevation <- bei.extra$elev
plot(elevation)

elevation <- bei.extra[[1]]

# density map starting from points
density(bei)
densitymap <- density(bei)
plot(densitymap)

plot(densitymap)
points(bei)
points(bei, col="green", pch=19, cex=0.5)

##### DAY 2

par(mfrow=c(1,2))
plot(elevation)
plot(densitymap)

par(mfrow=c(2,1))
plot(elevation)
plot(densitymap)

# torniamo al plot originale
dev.off()

# Changing colors to maps
cln <- colorRampPalette(c("red", "orange", "yellow"))(15)
plot(densitymap, col=cln)

# colors in R dove trovo tutti i colori utilizzabili
http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

clg <- colorRampPalette(c("lightcyan4", "lightgrey", "indianred4"))(100)
plot(densitymap, col=clg)

# esercizio per mettere le due mappe di due colori diversi una accanto all'altra
par(mfrow=c(1,2))
plot(densitymap, col=cln)
plot(densitymap, col=clg)

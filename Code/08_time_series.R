# time series analysis in R

library(terra)
library(imageRy)

im.list()

# importing data (EN, European Neutrogen)
EN01 <- im.import("EN_01.png") 
EN13 <- im.import("EN_13.png") 

# make a difference between the images, using the layers
# we can use the first layer (they are formed by 3 layers)

difEN = EN01[[1]] - EN13[[1]]
plot(difEN)

# exemple 2: ice melts in Greenlend

gr <- im.import("greenland")

# we can plot one single layer
plot(gr[[1]])
plot(gr[[4]])

# exercise plot in a multiframe the first and the last elements of gr
par(mfrow=c(1,2))
plot(gr[[1]])
plot(gr[[4]])

# we make a differerence of images of gr

difgr = gr[[1]] - gr[[4]]
plot(difgr)

# Exercise: compose a RGB image with years 
im.plotRGB(gr, r=1, g=2, b=4)


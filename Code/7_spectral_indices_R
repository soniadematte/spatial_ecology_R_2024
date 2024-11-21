# spectral indices


library(imageRy)
library(terra)

# listing files
im.list()

# Importing data: we are using the file matogrosso
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")  # it is an image with bands already stack 

# in the data provided by the nasa we know that:
# band 1 = NIR
# band 2 = red
# band 3 = green

im.plotRGB(m2006, r=1, g=2, b=3)

plot(m2006[[2]])
plot(m2006[[3]])
plot(m2006[[1]])

# we can put the NIR on top of the blue
im.plotRGB(m2006, r=3, g=2, b=1) # all the human used soil is colored in yellow, while the water is not black because there are different materials inside
, 
# we can enance vegetation putting the green on top
im.plotRGB(m2006, r=3, g=1, b=2)

# import the image from 1992 to see how was the situation before humans
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")

im.plotRGB(m1992, r=3, g=2, b=1) 

# multiframe with the images beside each other
par(mfrow=c(1,2))
im.plotRGB(m1992, r=2, g=3, b=1)
im.plotRGB(m2006, r=2, g=3, b=1)


# exercise: make a multiframe with six images in pairs with NIR on the same component

par(mfrow=c(3,2))
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m2006, r=1, g=2, b=3)
im.plotRGB(m1992, r=3, g=1, b=2)
im.plotRGB(m2006, r=3, g=1, b=2)
im.plotRGB(m1992, r=2, g=3, b=1)
im.plotRGB(m2006, r=2, g=3, b=1)

# Calculating de DVI (Different Vegetation Index) of 1992 and 2006
# DVI 1992
dvi1992 = m1992[[1]] - m1992[[2]] # as the band 1 is the NIR and the band 2 is the red

cl <- colorRampPalette(c("darkblue", "yellow", "red", "black")) (100)
plot(dvi1992, col=cl)

# DVI 2006
dvi2006 = m2006[[1]] - m2006[[2]]
plot(dvi2006, col=cl)

# mettiamole insieme in un immagine
par(mfrow=c(1,2))
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)

# si fa ndvi per normalizzare il range
ndvi1992 = dvi1992 / (m1992[[1]] + m1992[[2]])
plot(ndvi1992, col=cl)

ndvi2006 = dvi2006 / (m2006[[1]] + m2006[[2]])
plot(ndvi2006, col=cl)




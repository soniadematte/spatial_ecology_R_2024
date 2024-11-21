# Code for managing and analyzing remotery sensing data



# we have to install the package imageRy, we have to use the function install_githus()
# which is part of a package called devtools

install.packages("devtools")
library(devtools) # packages in R are also called library

# now we install the other package
install_github("ducciorocchini/imageRy")
install.packages("Rtools")

library(imageRy)

# list the data
im.list()

# Sentinel 2 is the name of the satellite
# this function let's you import the data and use it (although it is already in R)
b2 <- im.import("sentinel.dolomites.b2.tif")

# we can use another color palette
cl <- colorRampPalette(c("black", "grey", "light grey")) (100)

# ora si vede la riflessione dei colori con il grigio chiaro
plot(b2, col=cl)

# exercise import number 3 with the previvous palette
b3 <- im.import("sentinel.dolomites.b3.tif") 
plot(b3, col=cl)

# import b4 the red band
b4 <- im.import("sentinel.dolomites.b4.tif") 
plot(b4, col=cl)

# import b8, fuori dalla banda visibile (?), è la NIR band
b8 <- im.import("sentinel.dolomites.b8.tif") 
plot(b8, col=cl)

# multiframe tutte insieme
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# stack in modo che interagiscano l'una con l'altra, nella stessa immagine, le devo concatenare e dare un nome all'immagine
stacksent <- c(b2, b3, b4, b8)
plot(stacksent, col=cl)

# plotting one layer
dev.off()
plot(stacksent[[1]], col=cl)

# now i want b8
plot(stacksent[[4]], col=cl)

# multiframe with different color palette
par(mfrow=c(2,2))

clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)
plot(b2, col=clb)

clg <- colorRampPalette(c("dark green", "green", "light green")) (100)
plot(b3, col=clg)

clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

# plotting the NIR band (b8)
cln <- colorRampPalette(c("brown", "orange", "yellow")) (100)
plot(b8, col=cln)

# RGB plotting
# band2 blue element 1, stacksent[[1]] 
# band3 green element 2, stacksent[[2]]
# band4 red element 3, stacksent[[3]]
# band8 nir element 4, stacksent[[4]]

im.plotRGB(stacksent, r=3, g=2, b=1) # natural color image
im.plotRGB(stacksent, r=4, g=3, b=2) # we put the near infrarossi on the top of the others, so everything that it's reflecting in the infrared can be seen
im.plotRGB(stacksent, r=3, g=4, b=2) # everything that is reflected by the NIR should be in ultra green
im.plotRGB(stacksent, r=3, g=2, b=4) # in this case the vegation becomes blue because...



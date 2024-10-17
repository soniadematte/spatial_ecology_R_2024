install.packages("sdm")
library(sdm)

install.packages("terra")
library(terra)

# voglio trovare il file che si chiama species.shp
file <- system.file("external/species.shp", package="sdm")
file

# il risultato di come arrivare a questo file
# [1] C:/Users/sonia/AppData/Local/R/win-library/4.4/sdm/external/species.shp"

# ora voglio salvare i dati in un altro file devo usare la funzione vect
rana <- vect(file)

rana$Occurrence
plot(rana)

pres <- rana[rana$Occurrence==1]



par(mfrow=c(1,2))
plot(rana)
plot(pres)

# esercizio: seleziona data da rana con solo assenze

abse <- rana[rana$Occurrence==0]

# esercixio: metti in un frame pres abse e all

par(mfrow=c(1,3))
plot(rana, main="all")
plot(pres, main="pres")
plot(abse, main="abse")

par(mfrow=c(3,1))
plot(rana, main="all")
plot(pres, main="pres")
plot(abse, main="abse")

# esercizio: metti in un grafico le presenze in blu e assenze in rosso, si usa points e non plot per aggiungere

plot(pres, col="blue")
points(abse, col="red")

# Covariates
elev <- system.file("external/elevation.asc", package="sdm")
elev

# Risultato del file
[1] "C:/Users/sonia/AppData/Local/R/win-library/4.4/sdm/external/elevation.asc"

# si usa rast e non vector perchè è un'immagine e non sono punti
elevmap <- rast(elev)
elevmap
plot(elevmap)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(elevmap, col=cl)
points(pres)
                      

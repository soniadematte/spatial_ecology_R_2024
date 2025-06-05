# Code to estimate the temporal overlap between species

install.packages("overlap")
library(overlap)

# Kerinci is the dataset
data(kerinci)

# exercise: show the first 6 rows of kerinci
head(kerinci)

# summary is to see the number of the animals individuati
summary(kerinci)

# creo una colonna del tempo, cioè un oggetto nel dataset (utilizzo il dollaro per collegare)
kerinci$Timecirc <-kerinci$Time * 2 * pi

# now we want to select only the tiger data with the simnbol ==
# in kerinci devo selezionare solo il data set di kerinci delle tigri, chiamato Sps, si mette una virgola per chiudere la domanda
tiger <- kerinci[kerinci$Sps=="tiger",]

# facciamo un grafico di densityplot
# selezionamo il tempo della tigre, che abbiamo messo prima in timecirc
tigertime <- tiger$Timecirc

# ora facciamo la density plot del tiger time, e avrò un grafico con asse y la densità di animali e asse x il tempo circolare
densityPlot(tigertime)

# ora facciamo lo stesso con un'altra specie e poi overlappiamo i grafici
# macaque
macaque <- kerinci[kerinci$Sps=="macaque",]
head(macaque)
macaquetime <- macaque$Timecirc
densityPlot(macaquetime)

# ora sovrappongo i due grafici
overlapPlot(tigertime, macaquetime)

nomacaque <- kerinci[kerinci$Sps!="macaque",]
summary(nomacaque)

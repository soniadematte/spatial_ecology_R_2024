# code for multivariate analysis of species x plot data in communities

install.packages("vegan")
library(vegan)

# Dataset
data(dune)
head(dune)
View(dune)

# analysis
multivar <- decorana(dune)
multivar

# axis lenght
dca1= 3.7004
dca2= 3.1166
dca3= 1.30055
dca4= 1.47888

total = dca1 + dca2 + dca3 + dca4

# proportions
prop1 = dca1/total
prop2 = dca2/total
prop3 = dca3/total
prop4 = dca4/total

# percentages
perc1 = prop1/total
perc2 = prop2/total
perc3 = prop3/total
perc4 = prop4/total

#  whole amount of variability (%)
perc1 + perc2 
# the first two axis give a variability of 71

# vedo il grafico con tutte le specie utilizzando solo due dimensioni dca1 e dca2
plot(multivar)

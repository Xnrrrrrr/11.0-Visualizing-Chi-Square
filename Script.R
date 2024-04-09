catdog <- read.delim("CatsandDogs-1.dat")

#using xtabs to create contingency table

xtabs(~Animal + Dance, data = catdog )

#using table function to create contingency table

table(catdog$Animal, catdog$Dance)

# Store as observations 

obs1 <- xtabs(~Animal + Dance, data = catdog )
obs2 <- table(catdog$Animal, catdog$Dance)

# Run chi square 
chisq.test(obs1, correct = FALSE)
chisq.test(obs2, correct = FALSE)


#view the data in different ways
chi.DogCat <-chisq.test(obs1, correct = FALSE)
chi.DogCat$observed
chi.DogCat$residuals

# Create Mosaic Plot
mosaicplot(obs1, shade = TRUE, MAIN = "Animal vs Dance")


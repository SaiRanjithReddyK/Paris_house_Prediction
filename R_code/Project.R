ParisHousing <- read.csv("C:/Users/nambi/Downloads/PARIS HOUSING PRICE/ParisHousing.csv")
View(ParisHousing)
str(ParisHousing)

sum(is.na (ParisHousing))
summary(ParisHousing)
cor(ParisHousing)
boxplot (ParisHousing)
for (col in names (ParisHousing)) {
  boxplot (ParisHousing [col], xlab = col)
}

# Calculate the pairwise Euclidean distances
d <- dist(ParisHousing, method = "euclidean")
# Perform hierarchical clustering on the distance matrix
hc_withoutnorm <- hclust(d, method = "complete")
# Plot a dendrogram of the hierarchical clustering results
plot(hc_withoutnorm, hang = -1, ann = T, xlab = "Clustering")
# Cut the hierarchical clustering tree into 3 clusters


ParisHousing$pricebracket <- cutree(hc_withoutnorm, k = 3)
# Convert the cluster labels to a factor variable with the labels "Luxury", "Premium", and "Basic"
ParisHousing$pricebracket <- factor(ParisHousing$pricebracket, labels = c("Luxury", "Premium", "Basic"))
# Create a boxplot of the prices within each price bracket
boxplot(price ~ pricebracket, data = ParisHousing, xlab = "Price Bracket", ylab = "Price (Euros)")



# Create housing category subsets
luxury <- ParisHousing[ParisHousing$pricebracket=="Luxury",]
premium <- ParisHousing[ParisHousing$pricebracket=="Premium",] 
basic <- ParisHousing[ParisHousing$pricebracket=="Basic",]





# Read in the data
data <- read_excel("second_year_marks.xlsx")

# Select only the numeric columns for correlation
cor_data <- data[, -c(1, 2, 3)]
cor_data <- as.data.frame(sapply(cor_data, as.numeric))

# Calculate the correlation matrix
cor_matrix <- cor(cor_data, use="pairwise.complete.obs")

# Print the correlation matrix
print(cor_matrix)

# Load the data
data <- read_excel("second_year_marks.xlsx")

# Convert non-numeric columns to numeric
data[, 4:6] <- sapply(data[, 4:6], as.numeric)

# Remove any rows with missing values
data <- na.omit(data)

# Perform PCA
pca <- prcomp(data[, -c(1, 2, 3)], scale = TRUE)

# Print the proportion of variance explained by each PC
print(pca$sdev^2 / sum(pca$sdev^2))

# Print the loadings for the first principal component
print(pca$rotation[,1])



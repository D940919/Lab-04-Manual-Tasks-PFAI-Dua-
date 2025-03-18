# Load dataset
data(iris)

# Split data into training and testing sets (70%-30%)
set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Train a classification model (Decision Tree)
model <- train(Species ~ ., data = trainData, method = "rpart")

# Make predictions
predictions <- predict(model, testData)

# Evaluate model accuracy
conf_matrix <- confusionMatrix(predictions, testData$Species)
print(conf_matrix)
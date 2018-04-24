set.seed(47)
inTrain <- createDataPartition(y = dataset$label, p = .75, list = FALSE)
training <- dataset[inTrain,]
testing <- dataset[-inTrain,]
my_control <- trainControl(
  method="cv",
  number=5,
  savePredictions="final",
  classProbs=TRUE,
  index=createResample(training$label, 25),
)

model_list <- caretList(
  label~. , training,
  trControl=my_control,
  methodList=c(List of models)
)

p <- predict(model_list, training))
print(p)

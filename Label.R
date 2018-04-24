set.seed(47)
nobs <- nrow(dataset) # number of observations
sample <- train <- sample(nrow(dataset)) # sample data
validate <- sample(setdiff(seq_len(nrow(dataset)), train), 0.15*nobs) 
test <- setdiff(setdiff(seq_len(nrow(dataset)), train), validate)

Label the datapoints
#============================================================
assign.cluster.labels <- function(dataset, k)
{
     kmeans <- kmeans(sapply(na.omit(dataset, rescaler, "range"), k)
     dataset <- cbind(dataset, clusternum = kmeans$cluster) #assign cluster number to each datapoint
     N = which(kmeans$size<(alpha)*(nrow(dataset)/2), arr.ind = TRUE, useNames = TRUE) #Find small clusters
     M = which(kmeans$withinss>(beta)*(median(kmeans$withinss)), arr.ind = TRUE, useNames = TRUE) #Find sparse clusters
     R = which(kmeans$withinss<(gamma)*(median(kmeans$withinss)), arr.ind = TRUE, useNames = TRUE) #Find dense clusters
     dataset$label <- ifelse(datset$clusternum %in% N | datset$clusternum %in% M | datset$clusternum %in% R, "anomalous", "normal") #Label the datapoint in M, N and R as anamolous and the remaining as normal
}

library(ClusterR)

# CAH avec group kmeans et reaffectation individus
setwd("C:/Users/Cepe-S1-14/REDCLA")
donclassif2 <- read.csv("donclassif2.txt",sep=";")
head(donclassif2)
dim(donclassif2)
plot(donclassif2)
kmeansclust <- kmeans(donclassif2, 1000, iter.max=1)
plot(donclassif2, col=kmeansclust$cluster)
dim(kmeansclust$centers)

distdon2 <- dist(kmeansclust$centers)
myhclustdon2 <- hclust(distdon2, method = "single", members = NULL)
plot(donclassif2,col=myhclustdon2$cluster+1)

res <- cutree(myhclustdon2,7)
plot(donclassif2,col=res)

# mapping kmeans hclust


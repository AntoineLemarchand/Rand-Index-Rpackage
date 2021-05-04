#' clustering
#'
#' @param dataframe dataframe composed of at least 2 values
#' @param k number of clusters created
#'
#' @return dataframe with 8 new columns, each of which corresponding to a clustering method
#' @export
#'
#' @examples
clustering=function(dataframe,k=3){

  # 1ere méthode de clustering "single"
  clust <- hclust(dist(dataframe), method = "single")
  dataframe$single <- as.factor(cutree(clust, k))

  # 2eme méthode de clustering "complete"
  clust2 <- hclust(dist(dataframe), method = "complete")
  dataframe$complete <- as.factor(cutree(clust2, k))

  # 3eme méthode de clustering "average"
  clust3 <- hclust(dist(dataframe), method="average")
  dataframe$average <- as.factor(cutree(clust3, k))

  # 4eme méthode de clustering "mcquitty"
  clust4 <- hclust(dist(dataframe), method="mcquitty")
  dataframe$mcquitty <- as.factor(cutree(clust4, k))

  # 5eme méthode de clustering "centroid"
  clust5 <- hclust(dist(dataframe), method="centroid")
  dataframe$centroid <- as.factor(cutree(clust5, k))

  # 6eme méthode de clustering "median"
  clust6 <- hclust(dist(dataframe), method="median")
  dataframe$median <- as.factor(cutree(clust6, k))

  # 7eme méthode de clustering "ward.D"
  clust7 <- hclust(dist(dataframe), method="ward.D")
  dataframe$ward.D <- as.factor(cutree(clust7, k))

  # 8eme méthode de clustering "ward.D2"
  clust8 <- hclust(dist(dataframe), method="ward.D2")
  dataframe$ward.D2 <- as.factor(cutree(clust8, k))

  return(dataframe)
}

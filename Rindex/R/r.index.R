#' r.index
#'
#' @param clust A dataframe created with clustering() or containing at least 2 groups
#' |  x  |  y  | clust1 | clust2 |
#' | --- | --- | ------ | ------ |
#' | --- | --- | ------ | ------ |
#'
#' @return A number which is the rand index
#' @export
#'
#' @examples
r.index=function(clust){
  a=0
  b=0
  c=0
  d=0
  n = nrow(clust)
  for (i in 1:n) {
    for (j in 1:n) {
      same1 <- (clust[i,2] == clust[j,2])
      same2 <- (clust[i,3] == clust[j,3])
      a=a+(same1*same2)
      d=d+(1-same1)*(1-same2)
      b=b+same1*(1-same2)
      c=c+(1-same1)*same2
    }
  }
  return ((a+d)/(a+b+c+d))
}

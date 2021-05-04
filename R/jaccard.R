#' jaccard
#'
#' @param dataframe dataframe containing at least 2 columns named after clustering methods (see clustering())
#' @param method1 method you want to compare to method2
#' @param method2 method you want to compare to method1
#'
#' @return jaccard.index, is a measure of the similarity between two data clusterings
#' @export
#'
#' @examples
jaccard=function(dataframe,method1="single",method2="complete"){
  m11=0
  m10=0
  m01=0
  n<-nrow(dataframe)
  for (i in 1:n){
    z=rep(dataframe[i, method1],n)
    t=rep(dataframe[i, method2],n)
    m11 <- m11 + sum((z==dataframe[,method1])*(t==dataframe[,method2]))
    m10 <- m10 + sum((z==dataframe[,method1])*(1-(t==dataframe[,method2])))
    m01 <- m01 + sum((1-(z==dataframe[,method1]))*(t==dataframe[,method2]))
  }
  jaccard.index=(m11)/(m11+m10+m01)
  return(jaccard.index)
}

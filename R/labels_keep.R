#' Keep the variable labels
#'
#' @param data Dataframe that you want to preserve its variable labels
#'
#' @return A list of variable labels from the dataframe
#' @export
#'
#' @examples
#' df <- data.frame(a1=floor(rnorm(10, 15, 5)),
#' a2 = gl(2, 2, 10))
#' attr(df[['a1']], 'label') <- 'Age'
#' attr(df[['a2']], 'label') <- 'Gender'
#' labels_keep(df)
labels_keep <- function(data){
  data_labels <- vector("list")

  for (i in names(data)){
    data_labels[[i]] <- attr(data[[i]], 'label')
  }
  return(data_labels)
}

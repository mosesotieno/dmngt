anymatch <- function(vars){
  ifelse(rowSums(!is.na(dplyr::pick(dplyr::starts_with(vars)))), "Yes", "No")
}

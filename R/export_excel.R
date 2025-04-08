#' Export dataframe to excel
#'
#' @param data Dataframe you want to export
#' @param fname File name of your exported dataframe
#'
#' @return A nicely formated excel file
#' @export
#'
#' @examples
#' export_excel(mtcars, "mtcars")
export_excel <- function(data, fname){

  wb <- openxlsx::createWorkbook()
  sh <- openxlsx::addWorksheet(wb, "Sheet 1")

  bstyle <- openxlsx::createStyle(border = "TopBottomLeftRight")
  hstyle <- openxlsx::createStyle(textDecoration =  "bold")


  openxlsx::writeData(wb, sh, data)

  openxlsx::setColWidths(wb, sh, cols = 1:ncol(data), widths = "auto")


  openxlsx::addStyle(wb, sh, bstyle, rows = 1:nrow(data)+1,
           cols = 1:ncol(data), gridExpand = TRUE)
  openxlsx::addStyle(wb, sh, hstyle, rows = 1, cols = 1:ncol(data))

  openxlsx::freezePane(wb, sh, firstRow = TRUE)


  if (file.exists("./reports/")){
    openxlsx::saveWorkbook(wb, paste0("./reports/", fname, ".xlsx"), overwrite =TRUE)

  } else{

    cat("You need to create where the file will be exported")

  }



}

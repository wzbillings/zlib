#' Create a bibliography file of all renv package dependencies
#'
#' @param filepath The ('.bib') file to write, passed on to knitr::write_bib().
#'
#' @return (invisibly) a character vector of packages which was passed on to
#'     knitr::write_bib().
#' @export
#'
#' See https://github.com/rstudio/renv/issues/340 for more details
#'
write_renv_bib <- function(filepath = "./pkgs.bib") {
  renvLock <- jsonlite::read_json("renv.lock")
  knitr::write_bib(x = names(renvLock$Packages), file = filepath)
  invisible(names(renvLock$Packages))
}

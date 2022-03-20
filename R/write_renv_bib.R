#' Create a bibliography file of all renv package dependencies
#'
#' See \link{https://github.com/rstudio/renv/issues/340} for more detail
#'
#' @param filepath The ('.bib') file to write, passed on to knitr::write_bib().
#'
#' @return (invisibly) a character vector of packages which was passed on to
#'     knitr::write_bib().
#' @export
#'
write_renv_bib <- function(filepath = "./pkgs.bib") {
  # Check that jsonlite and knitr are both installed!
  if (!requireNamepsace("jsonlite", quietly = TRUE)) {
    stop("ℹ You do not have the package 'jsonlite'.\n",
         "✖ zlib::write_renv_bib() will throw an error without this pkg.")
  }
  if (!requireNamepsace("knitr", quietly = TRUE)) {
    stop("ℹ You do not have the package 'knitr'.\n",
         "✖ zlib::write_renv_bib() will throw an error without this pkg.")
  }

  renvLock <- jsonlite::read_json("renv.lock")
  knitr::write_bib(x = names(renvLock$Packages), file = filepath)
  invisible(names(renvLock$Packages))
}
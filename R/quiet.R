#' Force a function to not print anything
#'
#' @param x A function invocation.
#'
#' @return whatever the function returns, but invisible.
#' @export
#' @examples
#' quiet(cat(5))
#' quiet((function(x) {cat(x); x^2})(5))
quiet <- function(x) {
  sink(tempfile())
  on.exit(sink())
  invisible(force(x))
}

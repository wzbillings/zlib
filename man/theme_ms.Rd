% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot-themes.R
\name{theme_ms}
\alias{theme_ms}
\title{Basic plot theme for manuscript}
\usage{
theme_ms(
  base_size = 12,
  strip_text_size = 14,
  axis_title_size = 14,
  axis_text_size = 12,
  title_text_size = 16,
  legend_text_size = 14,
  font_family = "",
  ...
)
}
\arguments{
\item{base_size}{base font size}

\item{strip_text_size}{size of text that goes over facets}

\item{axis_title_size}{size of axis label text}

\item{axis_text_size}{size of axis tick mark text}

\item{title_text_size}{size of plot title text}

\item{legend_text_size}{size of text in legend}

\item{font_family}{font to use in plot text}

\item{...}{Other arguments passed to \code{theme_minimal}.}
}
\description{
Basic plot theme for manuscript
}
\examples{
\dontrun{
library(ggplot2)

ggplot(iris, aes(Sepal.Length, Petal.Length)) +
    geom_point() +
    theme_ms()
}

}

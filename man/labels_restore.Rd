% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/labels_restore.R
\name{labels_restore}
\alias{labels_restore}
\title{Restore Variable Labels}
\usage{
labels_restore(data, variable_labels)
}
\arguments{
\item{data}{Dataframe where you want to restore the variable labels}

\item{variable_labels}{A list of variables that created from \code{labels_keep}}
}
\value{
Dataframe with the restored variable labels
}
\description{
Restore Variable Labels
}
\examples{
df <- data.frame(a1=floor(rnorm(10, 15, 5)),
a2 = gl(2, 2, 10))
attr(df[['a1']], 'label') <- 'Age'
attr(df[['a2']], 'label') <- 'Gender'
data_labels <- labels_keep(df)
labels_restore(df, data_labels)
}

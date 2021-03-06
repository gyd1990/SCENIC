% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_export2scope.R
\name{export2scope}
\alias{export2scope}
\title{export2scope}
\usage{
export2scope(scenicOptions, dgem)
}
\arguments{
\item{scenicOptions}{scenicOptions object}

\item{dgem}{Digital expression matrix}
}
\value{
The .loom file (\code{file name indicated in "loomFile" slot in scenicOptions})containing the following information:
\itemize{
\item dgem (digital expression matrix)
\item title: \code{getDatasetInfo(scenicOptions,"datasetTitle")}
\item genome:\code{ getDatasetInfo(scenicOptions,"org")}
\item regulons.AUC: \code{getAUC(loadInt(scenicOptions, "aucell_regulonAUC"))}
\item regulons: \code{loadInt(scenicOptions, "aucell_regulons")}
\item default.embedding: default t-SNE
\item default.embedding.name: default t-SNE type (e.g. AUC/binary and description)
\item column attributes: \code{getDatasetInfo(scenicOptions, "cellInfo")} and nGene (\code{colSums(dgem>0)}).
}
}
\description{
Create .loom file with the results of the analysis to visualize them in http://scope.aertslab.org
}
\examples{
# devtools::install_github("aertslab/SCopeLoomR")
# scenicOptions@fileNames$output["loomFile",] <- "myAnalysis.loom"
# export2scope(scenicOptions, exprMat)
}
\seealso{
To add extra data (e.g. embeddings or clusters), see: \code{help(package="SCopeLoomR")}
}

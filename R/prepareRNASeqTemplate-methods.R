#' Prepare RNA-Seq R Markdown Template
#'
#' @name prepareRNASeqTemplate
#' @family R Markdown Functions
#' @author Michael Steinbaugh
#'
#' @inherit basejump::prepareTemplate
#'
#' @export
#'
#' @examples
#' x <- prepareRNASeqTemplate()
#' x
#'
#' # Clean up
#' unlink(c(
#'     "_footer.Rmd",
#'     "_header.Rmd",
#'     "_output.yaml",
#'     "_setup.R",
#'     "bibliography.bib"
#' ))
prepareRNASeqTemplate <- function(overwrite = FALSE) {
    package <- "bcbioRNASeq"
    prepareTemplate(
        package = package,
        sourceDir = system.file(
            "rmarkdown/shared",
            package = package,
            mustWork = TRUE
        ),
        overwrite = overwrite
    )
}

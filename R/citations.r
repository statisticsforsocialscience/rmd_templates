##
#
# Prepare bib-tex files
# source this file in an results = "asis" to cite the packages
# change the pkgs variable to read those packages you want to cite

#' Write the bib-tex file from alist of package-strings
#'
#' @param pkgs a Vector containing package names to be cited
#'
#' @return nothing
#' @export
#'
#' @examples
#' write_bib(c("rmdtemplates", "knitr"))
write_bib <- function(pkgs) {
  knitr::write_bib(pkgs, "rpackages.bib", width = 120)
}


#' Cite a package in markdown
#'
#' @param pkg The name of the package to cide
#'
#' @return a markdown string
#' @export
#'
#' @examples
#' cite_pkg("knitr")
cite_pkg <- function(pkg){
  paste0("`",pkg,"`", "\u00A0[@R-", pkg, "]")
}


#' Create a list that cites packges
#'
#' @param pkgs a Vector containing package names to be cited
#'
#' @return a markdown string
#' @export
#'
#' @examples
#' list_cite(c("rmdtemplates", "knitr"))
list_cite <- function(pkgs){
  cat("\n\n# Used Packages\n\n")
  cat("We used the following packages to create this document:\n ")
  cat("\n")
  for (pgk in pkgs){
    cat(paste0("* Package: ", pgk, "\t by @R-", pgk, "\n"))
  }
  cat("\n")
}

#' Create a line that cites packges
#'
#' @param pkgs a Vector containing package names to be cited
#'
#' @return a markdown string
#' @export
#'
#' @examples
#' line_cite(c("rmdtemplates", "knitr"))
line_cite <- function(pkgs){
  cit <- paste0(
    paste(
      cite_pkg(pkgs),
      collapse = ", "),
    ".")

  cat(paste("We used the following packages to create this document:", cit))
}




#' A referencing function that wraps figure labels for both html and latex output
#'
#' @param label the figure label
#' @param text An optional reference text
#' @param output the output format either "latex" or "html"
#'
#' @return a markdown string formatted matching the output format
#' @export
#'
#' @examples
#' ref("fig:fig1")
ref <- function(label, text="", output = knitr::opts_knit$get("rmarkdown.pandoc.to")){
  if(!is.null(output)){
    if(output == "latex") {
      return(
        paste0("\u00a0\\ref{",label,"} ")
        )
    }

    if(output == "html") {
      return(paste0(" \\@ref(",label,") "))
    }

  }
  else {
    return(paste0("[",text,"](#",label,")"))
  }

}





ref_switch <- function(label, output = knitr::opts_knit$get("rmarkdown.pandoc.to")){

}


#' generate LNCS Environments with a counter
#'
#' @param env The name of the environment (e.g., "Theorem", "Lemma", etc.)
#'
#' @return A function that formats output for the environment
#' @export
#'
#' @examples
#' theorem <- generate_environment("Theorem")
generate_environment <- function(env = "Theorem"){
  counter <- 1
  function(text){
    cat(paste0("**",env, " ", counter, ".** *", text, "* \n\n"))
    counter <<- counter + 1
  }
}


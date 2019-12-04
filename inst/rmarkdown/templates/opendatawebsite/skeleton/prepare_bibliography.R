##
#
# Prepare bib-tex files
# source this file in an results = "asis" to cite the packages
# change the pgks variable to read those packages you want to cite

pgks <- c("knitr", "tidyverse", "logger", "rmdformats", "DT", "kableExtra", "scales", "psych")
knitr::write_bib(pgks, "rpackages.bib", width = 60)

cat("\n")
for (pgk in pgks){
  cat(paste0("* Package: ", pgk, "\t by @R-", pgk, "\n"))
}
cat("\n")


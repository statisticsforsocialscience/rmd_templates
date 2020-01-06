#
#
# This script installs a missing dependency for pocket mod markdown files.
# It requires tinytex and its telmgr to install the package.
# ONLY run this script, if you want tinytex to be installed on our computer.
#

if(!require(tinytex)){
  install.packages("tinytex")
}

# Install tinytex
tinytex::install_tinytex()
# Install ly1 package (this solves the "missing `ly1lang.def"-error)
tinytex::tlmgr_install("ly1")

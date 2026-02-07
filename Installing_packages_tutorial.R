############################################################
# HOW TO INSTALL LIBRARIES AND PACKAGES IN R
# Complete Demonstration Script
# Prashant Tiwari
############################################################

############################
# 1. INSTALL FROM CRAN
############################

# Install a single package from CRAN
install.packages("dplyr")

# Load the installed package
library(dplyr)

# Install multiple packages at once
install.packages(c("readr", "tidyr", "stringr"))

# Load multiple packages
library(readr)
library(tidyr)
library(stringr)


############################
# 2. CHECK INSTALLED PACKAGES
############################

# View all installed packages
installed.packages()

# Show only package names
installed.packages()[, "Package"]


############################
# 3. UPDATE PACKAGES
############################

# Update all installed packages (without asking)
update.packages(ask = FALSE)


############################
# 4. INSTALL FROM BIOCONDUCTOR
############################

# Install BiocManager (only once)
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# Install a Bioconductor package (bioinformatics example)
BiocManager::install("DESeq2")

# Load the Bioconductor package
library(DESeq2)


############################
# 5. INSTALL FROM GITHUB
############################

# Install devtools for GitHub packages
install.packages("devtools")
library(devtools)

# Install a package directly from GitHub
devtools::install_github("r-lib/usethis")

# Load the GitHub-installed package
library(usethis)


############################
# 6. INSTALL A PACKAGE LOCALLY (OFFLINE METHOD)
############################

# Windows example (.zip file)
# install.packages(
#   "C:/Users/YourName/Downloads/package_name.zip",
#   repos = NULL,
#   type = "win.binary"
# )

# Linux / macOS example (.tar.gz file)
# install.packages(
#   "/home/user/Downloads/package_name.tar.gz",
#   repos = NULL,
#   type = "source"
# )


############################
# 7. INSTALL PACKAGES QUIETLY
############################

# Install without showing messages
install.packages("forcats", quiet = TRUE)

# Load the package
library(forcats)


############################
# 8. CHECK PACKAGE VERSION
############################

packageVersion("dplyr")


############################
# 9. WHERE ARE PACKAGES STORED?
############################

.libPaths()


############################
# 10. UNINSTALL PACKAGES
############################

# Remove a single package
remove.packages("forcats")

# Remove multiple packages
remove.packages(c("readr", "tidyr", "stringr"))

# Verify removal
"forcats" %in% installed.packages()[, "Package"]



############################################################
# END OF SCRIPT
############################################################

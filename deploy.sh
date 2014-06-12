#!/bin/sh
# Automated deploy for jekyll static site
# Gets newest version from git repository 
# then rebuild static content, and sends 
# it trough ftp to server.

# Git repository
GIT_REPOSITORY="git@github.com:tmuras/dentysta-irlandia.git"

# Create temp dir
TEMP_DIR=`mktemp -d`

# Get git repository
git clone ${GIT_REPOSITORY} ${TEMP_DIR}

# Rebuild and send static content via ftp
cd ${TEMP_DIR}
glynn

# Clean up
rm -rf ${TEMP_DIR}
cd -
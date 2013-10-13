#!/bin/bash
#
# All conversion steps that are particular to an individual deployment of the 
#  static html files are done separately, in modify_custom_html.sh.
#
# This is meant to make it easy for anyone to build a simple static site
#  focused on helping people learn to use Python.
#
# This code is meant to work well as a commit hook. That way the html files
#  are kept up to date with the raw notebooks. However, this script can be run
#  manually when you want an html snapshot of the notebooks.

printf "\nConverting notebooks to html..."

# Remove old html files.
printf "\nRemoving old html files..."
rm *.html
printf "\n  Removed files."

# Convert raw .ipynb files to raw .html files.
printf "\nConverting raw .ipynb files to raw .html files..."
ipython nbconvert *.ipynb
printf "\n  Converted files.\n"


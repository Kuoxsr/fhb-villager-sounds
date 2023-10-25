#!/usr/bin/env bash

# This file only runs in a terminal on Linux
# On Windows, you'll have to pack the files manually
# Make sure that pack.meta and "assets" are in the ROOT of your archive

clear
echo -e "Current set of editions:\n"
echo "1. Adult edition"
echo "2. Loaded edition"
echo "3. UwU edition"
echo
read -p "Which would you like to pack? " edition

name=""
case $edition in
    1) name="adult" ;;
    2) name="loaded" ;;
    3) name="uwu" ;;
    *) echo "Unknown choice.  Script terminating."; exit 1; ;;
esac

echo
read -p "Version suffix?  (e.g., 'v1.0): " version

# Create date folder
date_stamp=$(date +%Y.%m.%d)
mkdir -p "releases/${date_stamp}"

echo -e "\nPacking $name edition, version $version into folder $date_stamp: \n"

# In order to prevent the inclusion of every folder from the root
# to my desired directory, I need to change directory (cd) first:
(cd $name && zip -r ../releases/${date_stamp}/fhbvs-$name-edition-$version.zip .)

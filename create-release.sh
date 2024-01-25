#!/usr/bin/env bash

# This file only runs in a terminal on Linux
# On Windows, you'll have to pack the files manually
# Make sure that pack.meta and "assets" are in the ROOT of your archive

clear
echo -e "\n Pack builder script for FlyingHawkButt sound packs."
echo -e "\n Please choose an edition to package:\n"
echo " 1. Adult edition"
echo " 2. Loaded edition"
echo " 3. UwU edition"
echo
read -p " Which would you like to pack? " edition

name=""
case $edition in
    1) name="adult" ;;
    2) name="loaded" ;;
    3) name="uwu" ;;
    *) echo " Unknown choice.  Script terminating."; exit 1; ;;
esac

echo
echo
read -p " Version suffix? (e.g., v1.0): " version

# Create date folder
date_stamp=$(date +%Y.%m.%d)
mkdir -p "releases/${date_stamp}"

# the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# the temp directory used, within $DIR
# omit the -p parameter to create a temporary directory in the default location
temp_dir=`mktemp -d -p "$DIR"`

# check if temporary dir was created
if [[ ! "$temp_dir" || ! -d "$temp_dir" ]]; then
  echo " Could not create temp dir"
  exit 1
fi

# deletes the temp directory
function cleanup {
  rm -rf "$temp_dir"
  echo -e "\n Deleted temp working directory $temp_dir"
}

# register the cleanup function to be called on the EXIT signal
trap cleanup EXIT

# Create a function out of the code that builds the pack
function build_pack {
    # Declare some named variables for readability
    edition_name=$1
    version_suffix=$2
    date_folder=$3
    temp_folder=$4
    pack_type=$5

    # Report that we're starting the process
    echo -e "\n Packing $edition_name $version_suffix $pack_type into folder $date_folder:\n"

    # Copy the files to zip into the temporary folder
    cp -a $edition_name/. $temp_folder

    # If we're building an addon pack, set replace:true to false instead
    if [[ $pack_type == "addon" ]]; then
        sed -i 's/"replace":true,/"replace":false,/g' $temp_folder/assets/minecraft/sounds.json
        pack_type="-"$pack_type
    fi

    # In order to prevent the inclusion of every folder from the root
    # to my desired directory, I need to change directory (cd) first:
    filename=fhbvs-$edition_name-$version_suffix$pack_type.zip
    (cd $temp_folder && zip -r ../releases/${date_folder}/$filename .)

    # Create a cryptographic hash checksum of our file
    (cd releases/${date_folder} && sha256sum $filename > $filename.sha256)
}

# Actually call the function, with various custom input
build_pack $name $version $date_stamp $temp_dir
build_pack $name $version $date_stamp $temp_dir "addon"


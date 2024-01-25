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
echo
read -p "Version suffix?  (e.g., 'v1.0): " version

# Create date folder
date_stamp=$(date +%Y.%m.%d)
mkdir -p "releases/${date_stamp}"

# Determine whether to create an addon pack
type=1
echo -e "\n\nPack types:\n"
echo "1. Standard pack (default)"
echo "2. Addon pack"
echo
read -e -p "Choose what type of pack to generate: " input
type=${input:-$type}
echo

type_name=""
case $type in
    1) echo "you have chosen standard pack type" ;;
    2) echo "you have chosen addon pack type" ;;
    *) echo "Unknown choice.  Script terminating."; exit 1; ;;
esac

# the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# the temp directory used, within $DIR
# omit the -p parameter to create a temporary directory in the default location
WORK_DIR=`mktemp -d -p "$DIR"`

# check if temporary dir was created
if [[ ! "$WORK_DIR" || ! -d "$WORK_DIR" ]]; then
  echo "Could not create temp dir"
  exit 1
fi

# deletes the temp directory
function cleanup {
  rm -rf "$WORK_DIR"
  echo -e "\nDeleted temp working directory $WORK_DIR"
}

# register the cleanup function to be called on the EXIT signal
trap cleanup EXIT

# Report that we're starting the process
echo -e "\nPacking $name edition, version $version into folder $date_stamp:\n"

# Copy the files to zip into the temporary folder
cp -a $name/. $WORK_DIR

# If we're building an addon pack, set replace:true to false instead
pack_type="-edition"
if [[ "$type" -eq 2 ]]; then
    pack_type="-addon"
    sed -i 's/"replace":true,/"replace":false,/g' $WORK_DIR/assets/minecraft/sounds.json
fi

# In order to prevent the inclusion of every folder from the root
# to my desired directory, I need to change directory (cd) first:
filename=fhbvs-$name$pack_type-$version.zip
(cd $WORK_DIR && zip -r ../releases/${date_stamp}/$filename .)

# Create a cryptographic hash checksum of our file
(cd releases/${date_stamp} && sha256sum $filename > $filename.sha256)

#!/bin/sh
set -e

echo "Removing old files"
rm -f mdb.grf mdb.nml

echo "Starting build"
make mdb.grf

case "$OSTYPE" in
  darwin*)  install_dir="~/Documents/OpenTTD/newgrf/" ;; 
  linux*)   install_dir="~/.openttd/newgrf/" ;;
  bsd*)     install_dir="~/.openttd/newgrf/" ;;
  msys*)    install_dir="$USERPROFILE/Documents/OpenTTD/newgrf/" ;; 
  *)        echo "unknown: $OSTYPE" && exit 1 ;;
esac

echo "Copying to OpenTTD directory $install_dir"
cp mdb.grf $install_dir

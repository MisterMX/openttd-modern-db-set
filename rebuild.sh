#!/bin/sh
set -e

echo "Removing old files"
rm -f mdb.grf mdb.nml

echo "Starting build"
make mdb.grf

install_path = "$(cygpath -A -O)/OpenTTD/newgrf/"

echo "Copying to OpenTTD directory $install_path"
cp mdb.grf install_path


#!/bin/bash
set -e


#############################
# Change this value to make rpms of another version
VERSION="4.2.10"
#############################

FOLDER="torque-$VERSION"
ARCHIVE="$FOLDER.tar.gz"
BASEPATH="http://wpfilebase.s3.amazonaws.com/torque/"
echo "Downloading source..."
curl -O "$BASEPATH$ARCHIVE"

echo "Extracting source..."
tar xvzf $ARCHIVE

echo "Building source..."
cd $FOLDER 
./configure
make
make rpm

cp ~/rpmbuild/RPMS/x86_64/* /artifacts

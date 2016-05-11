#!/bin/bash

#############################
# Change this value to make rpms of another version
VERSION="4.2.10"
#############################

FOLDER="torque-$VERSION"
ARCHIVE="$OUTPUT.tar.gz"
BASEPATH="http://www.adaptivecomputing.com/download/torque/"
wget $BASEPATH$ARCHIVE -qO $ARCHIVE

# Repack - because...
tar xvzf $ARCHIVE

mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
cp $FOLDER/torque.spec ~/rpmbuild/SPECS/
cp $ARCHIVE ~/rpmbuild/SOURCES/

rpmbuild -bs --target x86_64 --nodeps ~/rpmbuild/SPECS/torque.spec
rpmbuild -bb --target x86_64 --nodeps ~/rpmbuild/SPECS/torque.spec


cp ~/rpmbuild/RPMS/x86_64/* /artifacts

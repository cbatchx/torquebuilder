#!/bin/bash
VERSION="torque-6.0.0.1"
FILENAME="$VERSION.tar.gz"
wget http://wpfilebase.s3.amazonaws.com/torque/torque-6.0.0.1-1449528029_21cc3d8.tar.gz -qO $FILENAME

# Repack - because...
tar xvzf $FILENAME
rm $FILENAME
mv torque-6.0.0.1* $VERSION
tar zcvf $FILENAME $VERSION

mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
cp $VERSION/torque.spec ~/rpmbuild/SPECS/
cp $FILENAME ~/rpmbuild/SOURCES/

rpmbuild -bs --target x86_64 --nodeps ~/rpmbuild/SPECS/torque.spec
rpmbuild -bb --target x86_64 --nodeps ~/rpmbuild/SPECS/torque.spec


cp ~/rpmbuild/RPMS/x86_64/* /artifacts

#!/bin/bash
set -e
set -u

NOVETTA_PATH=$HOME/gocode/src/github.com/Novetta
GRUMBLE=$HOME/gocode/src/github.com/colek42/grumble

sudo rm -rf $HOME/rpmbuild
mkdir -p $HOME/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}

$NOVETTA_PATH/common/bin/buildrpm $GRUMBLE/build/grumble.spect

sudo yum install $HOME/rpmbuild/RPMS/x86_64/grumble*.rpm -y

exit $?

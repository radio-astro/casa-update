#!/bin/bash -ev

pushd git
/usr/local/bin/svn2git --rebase
for i in `git branch | cut -c 3-  | grep -v personal `; do echo " * processing branch $i"; git checkout $i; git push origin $i; done; > /dev/null

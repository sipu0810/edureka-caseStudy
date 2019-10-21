#! /bin/bash

# git-create-branch <release>
 
if [ $# -ne 1 ]
then
	echo 1>&2 "Usage: $0 release"
	exit 127
fi
 
branch_name=$1
git push origin master:refs/heads/$release
echo "git push origin master:refs/heads/$release"
git fetch origin
git checkout --track -b $release origin/$release
git pull

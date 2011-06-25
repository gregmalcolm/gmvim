#!/bin/bash

. get_script_path.sh

olddir=$PWD
find $script_path/.vim/bundle/ -type d -name '.git*' -exec rm -rf '{}' \; 
find $script_path/.vim/bundle/* -type d -depth 0 -exec git rm --cached '{}' \;
git add $script_path/.vim/bundle/
cd $olddir



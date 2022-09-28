#!/usr/bin/env bash

for dir in `ls -d */`
do
	cd $dir
	if [ -d "./.git" ]
		then
					echo
					echo
					echo "===================================================================================="
					echo "=== ASKING FOR STATUS IN $dir REPOSITORY"
					echo "===================================================================================="
					echo
					echo
					git status
		fi
	cd ..
done

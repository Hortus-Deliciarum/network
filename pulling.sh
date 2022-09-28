#!/usr/bin/env bash

for dir in `ls -d */`
do
	cd $dir
	if [ -d "./.git" ]
		then
						echo
						echo "=================================================================="
						echo "=== PULLING $dir REPOSITORY"
						echo "=================================================================="
						echo
						git pull
	fi
	cd ..
done

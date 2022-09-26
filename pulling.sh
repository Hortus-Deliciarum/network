#!/usr/bin/env bash

for dir in `ls -d */`
do
	echo
	echo "=================================================================="
	echo "=== PULLING $dir REPOSITORY"
	echo "=================================================================="
	echo
	cd $dir
	git pull
	cd ..
done

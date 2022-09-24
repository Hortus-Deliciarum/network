#!/usr/bin/env bash

for dir in `ls -d */`
do
	echo
	echo
	echo "===================================================================================="
	echo "=== ASKING FOR STATUS IN $dir REPOSITORY"
	echo "===================================================================================="
	echo
	echo
	cd $dir
	git status
	cd ..
done

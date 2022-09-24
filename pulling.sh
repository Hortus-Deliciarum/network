#!/usr/bin/env bash

for dir in `ls -d */`
do
	echo "=== PULLING $dir REPOSITORY ==="
	cd $dir
	git pull
	cd ..
done

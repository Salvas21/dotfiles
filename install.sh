#!/bin/sh
filename=zsh-plugins-list.txt
pluginsDir=.zsh/plugins-source/
while read line
do 
	cd $pluginsDir
	git clone $line
done < $filename

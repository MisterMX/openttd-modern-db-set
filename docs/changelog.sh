#Script taken from Dutch Trainset repository

#!/bin/sh

#Create list of constants and variables
hg log -r 906:tip --template '- {desc}\n' | sort > changelog_raw.txt

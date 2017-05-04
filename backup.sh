#!/bin/bash
#Date format
DAT=$(date +%d.%m.%Y)
#name of the future archive
NAME="jenkins_backup_$DAT"
#Saving and copying backup
tar -czvf /*/$NAME.tar.gz /*/*/
aws s3 mv /*/*/ s3://* --recursive
exit 0

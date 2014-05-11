#!/bin/bash

# Shell script to do incremental backup

# The date which determines what file to add in the incremental backup
DATE=$1
# echo $DATE

SRC_DIR='/home/kevin/'
DEST_DIR='/media/kevin/8C3669123668FE98/Backup/'

DIRS=('Audio' 'Data' 'Downloads' 'Installed' 'Pictures' 'Software' 'Websites' 'Backup' 'Desktop' 'Dropbox' 'Music' 'Public' 'Templates' 'Code' 'Documents' 'Semantic web' 'Videos')

for DIR in ${DIRS[@]}
do

    # echo ${DEST_DIR}/${DIR}_${DATE}.tar.gz
    # echo ${SRC_DIR}/${DIR}

    a="tar xvpfz ${DEST_DIR}/${DIR}_${DATE}.tar.gz -C ${SRC_DIR}/${DIR} -N $DATE"
    echo $a

done

echo "All files have been backed up, hopefully!"

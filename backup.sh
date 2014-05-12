#!/bin/bash

# Shell script to do incremental backup

# The date which determines what file to add in the incremental backup
DATE=$1
# echo $DATE

SRC_DIR='/home/kevin/'
DEST_DIR='/media/kevin/kevin-toshiba/backup/archive/'

DIRS=('Audio' 'Data' 'Downloads' 'Installed' 'Pictures' 'Software' 'Websites' 'Backup' 'Desktop' 'Dropbox' 'Music' 'Public' 'Templates' 'Code' 'Documents' 'Semantic web' 'Videos')

for DIR in ${DIRS[@]}
do

    # echo ${DEST_DIR}/${DIR}.tar.gz
    # echo ${SRC_DIR}/${DIR}

    tar xvpfz ${DEST_DIR}/${DIR}.tar.gz
        -C ${SRC_DIR}/${DIR}
        -g /var/log/snapshot/${DIR}.snar

done

echo "Backup Process completed!"

#!/bin/bash

# Shell script to do incremental backup

# The date which determines what file to add in the incremental backup

SRC_DIR='/home/kevin/'
DEST_DIR='/media/kevin/kevin-toshiba/backup/archive/'

START_TIME=`date`
START_TIME_SEC=`date +%s`

    # echo ${DEST_DIR}/${DIR}.tar.gz
    # echo ${SRC_DIR}/${DIR}

    DATE=`date +%A_%d-%m-%Y_%H-%M-%S`

    # Invoking tar to start the backup
    sudo tar cvpfz ${DEST_DIR}/Home_${DATE}.tar.gz\
        -g /var/log/snapshot/Home.snar\
        ${SRC_DIR}

END_TIME=`date`
END_TIME_SEC=`date +%s`

diff=$(( $END_TIME_SEC - $START_TIME_SEC ))

echo "
Backup Process began at - $START_TIME
Backup Process ended at - $END_TIME

Total time taken was `echo $(( $diff / 360 ))` Hours `echo $(( $diff / 60 ))` Minutes `echo $(( $diff % 60 ))` Seconds
"


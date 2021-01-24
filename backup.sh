#!/bin/bash
# Backs up a list of database
if [ $# != 1 ]
then
    echo Usage: Minimal a single argument which is the database to backup
    exit
fi  
date=`date +%F`
# Do we already have a backup folder for todays date?
if [ -d ~/backups/$date.tar.gz ]
then
    echo 'Database already been backed up today, overwrite?'
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
fi   
mkdir ~/backups/$date
mysqldump --databases $* > ~/backups/$date/my_databases.sql
tar -czvf ~/backups/$date/my_databases.sql ~/backups/$date
rm -rf ~/backups/$date
rotate = `date +%F --date='-30days'`
#delete 30 days ago backup file
rm ~/backups/$rotate.tar.gz
echo Backup of $1 completed

#!/bin/bash
NOWDATE=`date +%Y-%m-%d`
BACKUPNAME=$NOWDATE.sql.gz
echo “Creating backup of database to $BACKUPNAME”
mysqldump "RDS CONNECTION END POINT" -u "USER" -p"PASSWORD" "DATABASE_NAME" | gzip -9 > $BACKUPNAME
echo “Succesfully created database backup”
echo “Uploading backup to Amazon S3 bucket…”
/usr/bin/s3cmd put $BACKUPNAME s3://path/to/bucket/$BACKUPNAME
#One can wish to remove the backup file from the instance, using uncomment the below line
#rm $BACKUPNAME
echo “Done”


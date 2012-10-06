#!/bin/bash
NOWDATE=`date +%Y-%m-%d`
BACKUPNAME="$NOWDATE.sql.gz"
echo "downloading the file $BACKUPNAME"
/usr/local/bin/s3cmd get s3://path/to/bucket/$BACKUPNAME
echo "Succesfully downloaded"
echo "unzipping the file"
gzip -d $BACKUPNAME
echo "unzipped"
UNZIPNAME="$NOWDATE.sql"
echo "Will restore it Please wait "
mysql -u "USERNAME" -p"PASSWORD" "DB_NAME" < $UNZIPNAME
echo "restoring the file $BACKUPNAME"
echo "Deleting backup file..."
#rm -r  $BACKUPNAME
rm -r $UNZIPNAME
echo "Done"


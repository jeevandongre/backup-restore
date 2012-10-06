#!/bin/bash
NOWDATE=`date -I -d '7 days ago'`
BACKUPNAME="$NOWDATE.sql.gz"
/usr/local/bin/s3cmd del s3://path/to/bucket/$BACKUPNAME 


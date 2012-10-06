Automated script to take periodic backups from any database also from AWS RDS.
Provided the endpoint of the RDS DB.
Restores to another any other database.
Manage the number of backups. 
This script only retains 7 days old backups.
It can be tweaked. 

#things to do.
1)Hot incremenatal backups, instead of the just MYSQL DUMP
2)Integration of cron.

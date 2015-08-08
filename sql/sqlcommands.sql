CREATE USER 'tarryc'@'localhost' IDENTIFIED BY 'tarryc';
-- GRANT [type of permission] ON [database name].[table name] TO ‘[username]’@'localhost’;
GRANT ALL PRIVILEGES ON ddd.* TO 'tarryc'@'localhost';
FLUSH PRIVILEGES;
mysqldump --extended-insert=FALSE -u tarryc -p ddd > ddd-dump-08082015.sql
mysqldump --complete-insert -u tarryc -p ddd > ddd-dump-08082015.sql


psql --username=super_admin -c "DROP TABLE IF EXISTS event_raw; CREATE TABLE event_raw (json_data JSONB NOT NULL);"
php ./php/insert_data.php
php ./php/test.php
pslq --username=super_admin -c "SELECT COUNT(*) FROM event_raw;"

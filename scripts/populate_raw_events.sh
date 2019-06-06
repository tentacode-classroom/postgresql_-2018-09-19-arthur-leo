psql --username=super_admin -d github -c "DROP TABLE IF EXISTS event_raw" -c "CREATE TABLE event_raw (json_data JSONB NOT NULL);"
php ./php/insert_data.php
psql --username=super_admin -d github -c "SELECT COUNT(*) FROM event_raw;"

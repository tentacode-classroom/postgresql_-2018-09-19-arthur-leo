sudo -u postgres psql -c "ALTER SYSTEM SET listen_addresses='*';"

sudo service postgresql restart

sudo -u postgres psql -c "SELECT name, setting FROM pg_settings WHERE name LIKE '%listen%';"

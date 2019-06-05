# On redémarre PostgreSql pour qu'il accepte les changements
sudo -u postgres psql -f ./sql/super_admin

sudo service postgresql restart

sudo -u postgres psql -c 'ALTER SYSTEM RESET all;'

sudo service postgresql restart

psql --username=super_admin

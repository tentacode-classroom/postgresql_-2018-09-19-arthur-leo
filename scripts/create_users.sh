# Création d'un nouveaux User super_admin
CREATE ROLE super_admin LOGIN PASSWORD '12345' SUPERUSER;
CREATE DATABASE super_admin OWNER super_admin;
# On redémarre PostgreSql pour qu'il accepte les changements
sudo service postgresql restart

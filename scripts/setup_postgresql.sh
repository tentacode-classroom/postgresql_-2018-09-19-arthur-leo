#!/bin/sh

echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - sudo apt-get update
apt-get install postgresql-11 -y
# on regarde la version de psql pour voir si il est bien installé
psql --version

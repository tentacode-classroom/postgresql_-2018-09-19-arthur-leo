# postgresql_-2018-09-19-arthur-leo

Projet PostGreSQL
1 - Script "Set-Up Postgres"
But du script : Télécharger et installer postgresql-11 via les sources.

2 - Script "Import Github"
But du script : Récupérer le fichier via l'URL fournie par GH Archive qui correspond à la date que nous avons choisi. https://data.gharchive.org/[année]-[mois]-[jour]-[heure(s)].json.gz

On obtient donc l'URL https://data.gharchive.org/2017-05-11-2.json.gz

Puis le dézipper pour obtenir notre fichier JSON qui sera mis dans le dossier ressources/

3 - Script "Create Event Database"
But du script : Créer et mettre en place tout le schéma de la base de donnée github_events

Pour pouvoir utiliser ce script, vous devez avoir démarré le service postgres :

sudo service postgresql start
4 - Script "Configure"
But du script : Modifier la configuration en changeant le port pour 1234 et en configurant la mémoire pour une traitement efficace des données

5 - Script "Create Users"
But du script : Créer deux utilisateurs :

un utilisateur super_admin avec un role de superuser et pour mot de passe 12345. La base de donnée super_admin lui sera attribuée.**
un utilisateur github_events avec pour mot de passe 12345. La base de donnée github_events lui sera attribuée.**
Pour pouvoir utiliser ce script, vous devez avoir démarré le service postgres :

sudo service postgresql start
Une fois le script éxecuté, il faut modifier le fichier pg_hba.conf Le chemin qui devrait mener au fichier : /etc/postgresql/11/main/pg_hba.conf Vous devez ajouter les lignes ⬇

local all super_admin md5
local all github_events md5
Vous pouvez également enregistrer le mot de passe des utilisateurs en créant le fichier ~/.pgpass Et y ajouter les lignes suivantes :

#Pattern
# hostname:port:database:username:password

#User super_admin
*:*:*:super_admin:12345

#User github_events
*:*:*:github_events:12345
Executer la commande

chmod 600 ~/.pgpass
Vous pouvez désormais vous connecter simplement avec la commande psql --username=[nom du user]

6 - Script "Populate Raw Events"
But du script :

Créer une table event_raw dans la base de données github_events qui récupèrera chaque ligne de la ressource JSON
Créer un script qui récupèrera le JSON et découpera chaque ligne pour les entrer dans la table event_raw
Installer le paquet sudo apt-get install php7.0-pgsql

Pour exécuter le script php seul, utiliser la commande : php populate_events.php

7 - Installation de pg_admin`
Lancer la commande bash pg_admin_install.sh

8 - Script "Populate Events"
Lancer la commande bash populate_events.sh

10 - BackUp
Lancer la commande bash save.sh

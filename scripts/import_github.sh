#!/bin/bash
rm -r -f ../ressources
mkdir ../ressources
wget https://data.gharchive.org/2018-09-19-15.json.gz -P ../ressources
gunzip ../ressources/2018-09-19-15.json.gz

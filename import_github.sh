#!/bin/bash
rm -r -f Downloads
mkdir Downloads
wget https://data.gharchive.org/2018-09-19-15.json.gz -P Downloads/2018-09-19-15.json.gz
gunzip Downloads/2018-09-19-15.json.gz/2018-09-19-15.json.gz

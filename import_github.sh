#!/bin/bash
rm -f Downloads/2015-01-01-15.json.gz/2015-01-01-15.json
rm -f Downloads/2015-01-01-15.json.gz/2015-01-01-15.json.gz
rm -r -f Downloads/2015-01-01-15.json.gz/
rm -r -f Downloads
mkdir Downloads
wget https://data.gharchive.org/2015-01-01-15.json.gz -P Downloads/2015-01-01-15.json.gz
gunzip Downloads/2015-01-01-15.json.gz/2015-01-01-15.json.gz

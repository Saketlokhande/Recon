#!/bin/bash

domain=$1


mkdir -p ~/projects/$domain
mkdir -p ~/projects/$domain/domains
mkdir -p ~/projects/$domain/screenshots
mkdir -p ~/projects/$domain/vulnerabilities


#Finding Sub Domains
subfinder -d $domain -o ~/projects/$domain/domains/subfinder.txt
sublist3r -d $domain -o ~/projects/$domain/domains/sublist3r.txt

#Gathering Unique Sub Domains
cat ~/projects/$domain/domains/* | sort -u | tee ~/projects/$domain/domains/unique.txt

#Checking for Active Urls
cat ~/projects/$domain/domains/unique.txt | httprobe | tee ~/projects/$domain/domains/probed.txt

#Gathering Screenshots
cd ~/projects/$domain/screenshots; cat ~/projects/$domain/domains/probed.txt | aquatone; cd

#Scanning for Vulnerabilities
nuclei -t ~/tools/nuclei-templates/ -silent -l ~/projects/$domain/domains/probed.txt -o ~/projects/$domain/vulnerabilities/nuclei

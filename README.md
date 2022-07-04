# Recon

**How to install**

1. `git clone https://github.com/Saketlokhande/Recon.git`

**How to Use**

1. `chmod +x recon.sh && sudo cp recon /bin`
2. `autohack.sh target.com`

**What in target.txt**

google.com --> names of target root domains

yahoo.com --> mutiple targets at a time

**How it works**

recon.sh takes 1 root domain as target.com :

1. Find all the subdomain and save it in ~/project/target.com/domains directory
2. Then it scans all the subdoamins for vulnerability and saves it in vulnerability directory
3. Then it will take the screen shots for home page of all subdomain found so you can priorities which subdomain to test for vuln first & many more


**Credit**

All the public repo, project discovery & kali

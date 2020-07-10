#!/bin/sh
sudo wget https://dl.eff.org/certbot-auto
chmod a+x certbot-auto
echo -n "Your Domain（Example: xxx.com):"
read DOMAIN
./certbot-auto --server https://acme-v02.api.letsencrypt.org/directory -d "*.${DOMAIN}" -d "${DOMAIN}" --manual --preferred-challenges dns-01 certonly

#!/usr/bin/env sh
dom="$(grep WORDPRESS_DOMAIN .env |  cut -d '=' -f2)"
domain=${dom## }
echo ${domain}
cp ./conf/nginx.conf "./conf/${domain}.conf"
sed -i "s/DOMAIN/${domain}/" "./conf/${domain}.conf"

mkdir ./web && mkdir ./web/plugins && mkdir ./web/themes && mkdir ./web/uploads

chown www-data:www-data ./web/plugins
chown www-data:www-data ./web/themes
chown www-data:www-data ./web/uploads

docker-compose up -d
chown www-data:www-data web/plugins
chown www-data:www-data web/themes
chown www-data:www-data web/uploads

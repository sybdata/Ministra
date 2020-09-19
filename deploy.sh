#!/bin/sh

STALKER="/var/www/stalker_portal"

if [ ! -d $STALKER/deploy ]; then
        wget -O /tmp/stalker.zip http://live.dedyn.io:2015/ministra-5.6.1.zip
        unzip /tmp/stalker.zip -d /var/www/
        mv /var/www/stalker_portal-*/* /var/www/stalker_portal/
        rm -rf /var/www/stalker_portal-*
fi

if [ ! -s $STALKER/server/custom.ini ]; then
        wget -O $STALKER/server/custom.ini https://raw.githubusercontent.com/sybdata/Ministra/master/docker/stalker_custom.ini
fi

sed -i '/\bmysql_tzinfo_to_sql\b/g' $STALKER/deploy/build.xml

cd $STALKER/deploy && phing
if [ $? -eq 1 ]; then
        phing
fi

echo Success!

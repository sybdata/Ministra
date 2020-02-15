# Docker

mkdir /opt/stalker && cd /opt/stalker wget https://raw.githubusercontent.com/sybdata/Ministra/master/docker/docker-compose.yml docker-compose up -d

========================

Контейнер содержит только окружение, актуальную версию Stalker Middleware можно скачать и положить в /var/www/stalker_portal/ или выполнить скрипт, который сам скачает и развернет приложение(ministra-v5.6.1):

docker exec -it stalker_portal_1 /opt/deploy.sh


# Ministra Middleware Installation Script

This script is designed for installing Ministra 5.6.0 on a clean Ubuntu 16.04 system.

It is based on the instructions from the link below:

https://wiki.infomir.eu/eng/ministra-tv-platform/ministra-installation-guide/ministra-tv-platform-installation

Before executing ministra-install.sh, make sure of the following:
- The ministra-<version>.zip file is in the same directory as this script
- The script has execute permissions (chmod +x ministra-install.sh)
  
There are still many tweaks to be made, such as changing from the hard coded username/password for the stalker user.


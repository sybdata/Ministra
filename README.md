# Установка в Docker контейнер

### Чтобы установить Ministra/Stalker portal придется установить более 200 пакетов в вашу ОС. Рекомендую выделить отдельную виртуальную машину или установить в docker-контейнер, это быстро и удобно, иначе могут возникнут конфликты с другими веб-сервисами.

Для продолжения нам потребуется сам Docker и Docker-compose. Пример установки для большинства дистрибутивов:
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
apt-get install docker-compose  #установить Docker Compose из официального репозитория Ubuntu.
```
рекомендуется установить пакет Docker-compose из официального GitHub-хранилища Docker. Таким образом, вы всегда устанавливаете последнюю версию.
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
docker-compose version 1.28.2, build 67630359
```


Создадим рабочую папку, в которой будет у нас жить Stalker и скачаем docker-compose файл:
```
mkdir /opt/stalker && cd /opt/stalker && wget https://raw.githubusercontent.com/sybdata/Ministra/master/docker/docker-compose.yml
```
Запускаем Stalker:
```
docker-compose up -d
```
========================

Контейнер содержит только окружение, актуальную версию Stalker Middleware можно скачать и положить в /var/www/stalker_portal/ или выполнить скрипт, который сам скачает последнюю версию Stalker(ministra-v5.6.1) и заполнит нам базу данных:
```
docker exec -it stalker_portal_1 /opt/deploy.sh
```
Ждем, пока скрипт выполнится. У меня это занимает около 4-х минут (что ж там за это время происходит?). Готово, админ панель Сталкера доступна по адресу:
### http://ip/stalker_portal/ Заходим по стандартному логину/паролю: admin/1.

# Установка без виртуализации и контейнеров
## Ministra Middleware Installation Script

This script is designed for installing Ministra 5.6.0 on a clean Ubuntu 16.04 system.

It is based on the instructions from the link below:

https://wiki.infomir.eu/eng/ministra-tv-platform/ministra-installation-guide/ministra-tv-platform-installation

Before executing ministra-install.sh, make sure of the following:
- The ministra-<version>.zip file is in the same directory as this script
- The script has execute permissions (chmod +x ministra-install.sh)
  
There are still many tweaks to be made, such as changing from the hard coded username/password for the stalker user.


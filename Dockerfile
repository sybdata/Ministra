FROM klyushkov/stalker_env:latest

RUN npm config set strict-ssl false
RUN npm install -g npm@2.15.11	
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD deploy.sh /opt/deploy.sh
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf
ADD default /etc/nginx/sites-available/default
RUN chmod +x /opt/deploy.sh

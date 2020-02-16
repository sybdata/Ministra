FROM klyushkov/stalker_env:latest

RUN npm install -g npm@2.15.11	
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD deploy.sh /opt/deploy.sh
RUN chmod +x /opt/deploy.sh

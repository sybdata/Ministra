FROM klyushkov/stalker_env:latest

ADD deploy.sh /opt/deploy.sh
RUN chmod +x /opt/start.sh

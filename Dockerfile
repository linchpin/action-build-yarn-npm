FROM debian:9.7-slim

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN npm install -g yarn

COPY *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]

FROM debian:9.7-slim

RUN npm install -g yarn

COPY *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]

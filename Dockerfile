FROM debian:9.7-slim

COPY *.sh exclude-list.txt /

RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]
FROM debian:9.7-slim

COPY exclude-list.txt /
COPY *.sh
RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]
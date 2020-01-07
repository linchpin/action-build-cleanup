FROM debian:9.7-slim

ADD exclude-list.txt /exclude-list.txt

COPY *.sh /

RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]
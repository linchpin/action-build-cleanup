FROM debian:9.7-slim

RUN apt-get update \
  && apt -yq install rsync openssh-client \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

ADD exclude-list.txt /exclude-list.txt

COPY *.sh /

RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]
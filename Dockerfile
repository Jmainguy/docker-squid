FROM ubuntu:bionic-20200219
LABEL maintainer="jon@soh.re"

ENV SQUID_VERSION=3.5.27

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y squid=${SQUID_VERSION}* \
 && rm -rf /var/lib/apt/lists/*

COPY run.sh /tmp/run.sh
ADD squid.conf /tmp/squid.conf
RUN chmod 777 /tmp/run.sh

EXPOSE 3128/tcp
USER 1005
CMD ["/tmp/run.sh"]

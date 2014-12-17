FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install -qy haproxy
ADD hamba /usr/local/bin/hamba
ENTRYPOINT ["hamba"]

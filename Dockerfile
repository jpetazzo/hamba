FROM alpine
RUN apk update && apk add haproxy
ADD hamba /usr/local/bin/hamba
ENV HOME /run
VOLUME /run
ENTRYPOINT ["hamba"]

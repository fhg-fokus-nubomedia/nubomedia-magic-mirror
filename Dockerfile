FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/magic-mirror
ADD kurento-magic-mirror-6.2.1.jar /tmp/magic-mirror/
ADD keystore.jks /

EXPOSE 8443 443

ENTRYPOINT java -Dapp.server.url=https://dl.dropboxusercontent.com/u/19675892 -jar /tmp/magic-mirror/kurento-magic-mirror-6.2.1.jar
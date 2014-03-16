FROM        ubuntu
MAINTAINER  Matthew Fisher <me@bacongobbler.com>

RUN apt-get update
RUN apt-get install -yq lighttpd

RUN rm /etc/lighttpd/lighttpd.conf
ADD lighttpd.conf /etc/lighttpd/lighttpd.conf

ADD index.html /app/index.html

EXPOSE 80
CMD lighttpd -f /etc/lighttpd/lighttpd.conf -D

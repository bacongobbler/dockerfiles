FROM        ubuntu
MAINTAINER  Matthew Fisher <me@bacongobbler.com>

RUN apt-get update
RUN apt-get install -yq apache2

EXPOSE  80

ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND

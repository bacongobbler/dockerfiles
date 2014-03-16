FROM        ubuntu
MAINTAINER  Matthew Fisher <matthewf@opdemand.com>

RUN apt-get update
RUN apt-get install -yq pound

EXPOSE  80

ADD pound.cfg /etc/pound/pound.cfg

CMD pound

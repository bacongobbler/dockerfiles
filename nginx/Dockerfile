FROM        ubuntu
MAINTAINER  Matthew Fisher <me@bacongobbler.com>

# install nginx
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf  /etc/nginx/nginx.conf
ADD default     /etc/nginx/sites-enabled/default

WORKDIR /etc/nginx

EXPOSE  80

CMD nginx

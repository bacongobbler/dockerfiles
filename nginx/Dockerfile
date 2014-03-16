FROM        ubuntu
MAINTAINER  Matthew Fisher <me@bacongobbler.com>

# install nginx
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

WORKDIR /etc/nginx

EXPOSE  80

CMD nginx

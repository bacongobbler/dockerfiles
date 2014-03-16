FROM        ubuntu
MAINTAINER  Matthew Fisher <me@bacongobbler.com>

# install cURL
RUN apt-get update
RUN apt-get install -yq curl

# install Varnish
RUN curl http://repo.varnish-cache.org/debian/GPG-key.txt | sudo apt-key add -
RUN echo "deb http://repo.varnish-cache.org/ubuntu/ precise varnish-3.0" | sudo tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -yq varnish

ADD default.vcl /etc/varnish/vcl/default.vcl
ADD bin /app/bin

EXPOSE 80

CMD /app/bin/boot

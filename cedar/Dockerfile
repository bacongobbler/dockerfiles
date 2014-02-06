FROM        ubuntu
MAINTAINER  Matthew Fisher <me@bacongobbler.com>

ADD https://raw.github.com/progrium/cedarish/master/stack/cedar.sh ./
ADD https://raw.github.com/progrium/cedarish/master/stack/packages.txt ./
RUN LC_ALL=C DEBIAN_FRONTEND=noninteractive bash ./cedar.sh
RUN rm cedar.sh
RUN rm packages.txt

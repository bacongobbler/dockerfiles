from        ubuntu
maintainer  Matthew Fisher <me@bacongobbler.com>

# install prerequisites
run         apt-get update
run         apt-get install -q -y wget erlang-nox logrotate

# hack to connect to upstart: https://github.com/dotcloud/docker/issues/1024
run         dpkg-divert --local --rename --add /sbin/initctl

# add rabbitmq to sources
run         wget --quiet http://www.rabbitmq.com/releases/rabbitmq-server/v3.1.3/rabbitmq-server_3.1.3-1_all.deb
run         dpkg -i rabbitmq-server_3.1.3-1_all.deb

# cleanup install
run         rm rabbitmq-server_3.1.3-1_all.deb

expose      5672

cmd         ["rabbitmq-server"]

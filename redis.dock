from        ubuntu
maintainer  Matthew Fisher <me@bacongobbler.com>

run         apt-get update && apt-get install -q -y wget build-essential tcl8.5

run         wget http://download.redis.io/redis-stable.tar.gz
run         tar xzvf redis-stable.tar.gz
run         cd redis-stable && make && make test && make install

run         echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf

expose      6379

cmd         ["redis-server"]

from        ubuntu
maintainer  Matthew Fisher <me@bacongobbler.com>

run         apt-get update
run         apt-get install -q -y memcached

expose      11211

cmd         ["memcached", "-u", "daemon"]

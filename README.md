dockerfiles
===========

A list of docker build files for common web services. See http://docker.io/ for more info on dockerfiles.

# Building

These steps have been tested on Ubuntu 13.04 (raring):

```
# install docker http://docs.docker.io/en/latest/installation/ubuntulinux/

# optional: add the user that will run docker to the docker group
sudo addgroup docker
sudo usermod -aG docker <user>
# log out to apply this change

# then, start development
docker pull ubuntu
mkdir ~/git
git clone https://github.com/bacongobbler/dockerfiles ~/git/dockerfiles
cd $_
```

Now, let's try to build memcached:

```
docker build -t memcached - < memcached.dock
```

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
cd memcached && docker build -t bacongobbler/memcached .
```

If it was built successfully, we should see the following:

```
$ docker images
REPOSITORY               TAG                 ID                  CREATED             SIZE
bacongobbler/memcached   latest              6e2b6dc19333        27 seconds ago      12.29 kB (virtual 210.5 MB)
ubuntu                   12.04               8dbd9e392a96        4 months ago        131.5 MB (virtual 131.5 MB)
ubuntu                   latest              8dbd9e392a96        4 months ago        131.5 MB (virtual 131.5 MB)
ubuntu                   precise             8dbd9e392a96        4 months ago        131.5 MB (virtual 131.5 MB)
ubuntu                   12.10               b750fe79269d        5 months ago        24.65 kB (virtual 180.1 MB)
ubuntu                   quantal             b750fe79269d        5 months ago        24.65 kB (virtual 180.1 MB)
```

And now, we can run it:

```
docker run -d bacongobbler/memcached
```

You can also just build all of the docker images in this repository all at once!

```
bash build_all.sh
```

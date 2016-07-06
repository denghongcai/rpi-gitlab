# rpi-gitlab

To use this, you just need

```
git clone https://github.com/denghongcai/rpi-gitlab
cd rpi-gitlab
docker build . -t rpi-gitlab
docker images
```

then you got a new docker image `rpi-gitlab`

```
docker run --detach \
    --hostname 172.17.0.1 \
    --publish 20443:443 --publish 2080:80 --publish 2022:22 \
    --name gitlab \
    --restart always \
    --volume /opt/gitlab/config:/etc/gitlab \
    --volume /opt/gitlab/logs:/var/log/gitlab \
    --volume /opt/gitlab/data:/var/opt/gitlab \
    rpi-gitlab
```

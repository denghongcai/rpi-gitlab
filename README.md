# rpi-gitlab

To use this, you just need

```
git clone https://github.com/denghongcai/rpi-gitlab
cd rpi-gitlab
docker build . -t rpi-gitlab
docker images
```

then you got a new docker image `rpi-gitlab`

run the docker image

```
docker run --detach \
    --hostname 172.17.0.1 \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://172.17.0.1:2080/'; " \
    --publish 20443:443 --publish 2080:80 --publish 2022:22 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    rpi-gitlab
```

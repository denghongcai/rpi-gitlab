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
docker run rpi-gitlab -p 8080:80 -p 2022:22 -p 4433:443
```

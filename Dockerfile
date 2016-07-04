FROM sdhibit/rpi-raspbian

MAINTAINER Hongcai Deng <admin@dhchouse.com>

RUN apt-get update && apt-get install -yqq \
      curl \
      openssh-server \
      ca-certificates \
      postfix \
      apt-transport-https && \
      curl https://packages.gitlab.com/gpg.key | apt-key add -

RUN curl -sS "https://packages.gitlab.com/install/repositories/gitlab/raspberry-pi2/script.deb.sh" | bash

RUN apt-get update && \
      apt-get install gitlab-ce

EXPOSE 80

CMD ["gitlab-ctl reconfigure"]

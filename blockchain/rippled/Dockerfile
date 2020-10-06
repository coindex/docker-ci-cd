
#? https://github.com/WietseWind/docker-rippled
#? LICENCE https://github.com/WietseWind/docker-rippled/blob/master/LICENSE
#? This code has been referenced and modified from the above repository please go through the license
#! DO NOT REMOVE THE ABOVE
FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

COPY ripple/* /root/.config/ripple/
COPY entrypoint.sh /entrypoint.sh

RUN apt-get -y update &&\
    apt-get install -y apt-transport-https ca-certificates wget gnupg &&\
    wget -q -O - "https://repos.ripple.com/repos/api/gpg/key/public" | apt-key add - &&\
    echo "deb https://repos.ripple.com/repos/rippled-deb focal stable" | tee -a /etc/apt/sources.list.d/ripple.list &&\
    apt-get -y update &&\
    apt-get install -y rippled &&\
    rm -rf /var/lib/apt/lists/* &&\
    chmod +x /entrypoint.sh


RUN ln -s /opt/ripple/etc/update-rippled-cron /etc/cron.d/

EXPOSE 51235 5005 6006 80 443

ENTRYPOINT [ "/entrypoint.sh" ]


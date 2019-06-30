#/bin/sh

# install some tools
yum install -y git vim gcc glibc-static telnet bridge-utils net-tools

# install docker
# start docker service
rm -rf get-docker.sh

yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl enable docker

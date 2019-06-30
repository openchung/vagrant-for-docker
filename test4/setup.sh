#/bin/sh

# install some tools
sudo yum install -y git vim gcc glibc-static telnet bridge-utils curl wget
wget https://github.com/etcd-io/etcd/releases/download/v3.3.13/etcd-v3.3.13-linux-amd64.tar.gz
tar zxvf etcd-v3.3.13-linux-amd64.tar.gz

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# start docker service
sudo groupadd docker
sudo usermod -aG docker vagrant
sudo systemctl start docker

rm -rf get-docker.sh

#/bin/sh

# install some tools
sudo yum install -y git vim gcc glibc-static telnet bridge-utils curl wget

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# start docker service
sudo groupadd docker
sudo gpasswd -a vagrant docker
sudo systemctl start docker
sudo systemctl enable docker

rm -rf get-docker.sh

#/bin/sh

sudo yum install -y git vim gcc glibc-static telnet
sudo yum install -y curl policycoreutils-python openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo firewall-cmd --permanent --add-service=http
sudo systemctl reload firewalld
sudo yum install postfix
sudo systemctl enable postfix
sudo systemctl start postfix
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
# sudo cp gitlab-ce.repo /etc/yum.repos.d/
# sudo yum makecache
sudo EXTERNAL_URL="https://gitlab.example.com" yum install -y gitlab-ee
sudo gitlab-ctl reconfigure
#!/bin/bash
set -eu

# directories
ln -s /media/sf_workspace /workspace

# user
passwd -d keon

# node
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
. .profile
nvm install 0.10
nvm alias default 0.10

# ruby
echo 'export rvm_prefix="$HOME"' > /root/.rvmrc
echo 'export rvm_path="$HOME/.rvm"' >> /root/.rvmrc
. .profile
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# packages
sed -i s/kr.archive.ubuntu.com/ftp.daum.net/ /etc/apt/sources.list
apt-get update
apt-get dist-upgrade
apt-get install python-software-properties

# virtualbox-guest
apt-get install virtualbox-guest-utils

# postgresql
echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt-get update
apt-get install postgresql-9.3
update-rc.d postgresql disable
ln -s -t /usr/local/bin /usr/lib/postgresql/9.3/bin/*

# docker
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install lxc-docker

# ansible
apt-add-repository ppa:rquillo/ansible
apt-get update
apt-get install ansible

#!/usr/bin/env bash

# Install docker
wget -qO- https://get.docker.com/ | sh

# Install docker compose
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
chmod +x /usr/local/bin/docker-compose
sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"

# Install host tools
apt-get install sqlite3

# Install docker compose config
git clone https://github.com/datashaman/wifidog-auth-host.git config

# Fill in the blanks (create .env files)

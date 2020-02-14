#!/usr/bin/env bash
#
# Install Redis CLI
#
set -e

wget http://download.redis.io/redis-stable.tar.gz > /dev/null 2>&1
tar xvzf redis-stable.tar.gz
cd redis-stable
make
cp -f src/redis-cli /usr/local/bin/
chmod 755 /usr/local/bin/redis-cli

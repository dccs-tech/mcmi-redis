#!/usr/bin/env bash
#
# Install Redis CLI
#
set -e

wget http://download.redis.io/redis-stable.tar.gz 2>/dev/null
tar xvzf redis-stable.tar.gz
cd redis-stable
make 2>&1
cp -f src/redis-cli /usr/local/bin/
chmod 755 /usr/local/bin/redis-cli

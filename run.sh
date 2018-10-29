#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone 

sed -i "s/%master-ip%/${REDIS_MASTER_IP}/" /app/data/etc/redis.conf
sed -i "s/%master-port%/${REDIS_MASTER_PORT}/" /app/data/etc/redis.conf
sed -i "s/%redispass%/${REDIS_PASSWORD}/" /app/data/etc/redis.conf

redis-server /app/data/etc/redis.conf --protected-mode no
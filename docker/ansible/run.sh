#!/bin/sh

rm /root/.ssh/known_hosts
ssh root@centos -o StrictHostKeyChecking=no ls
ssh root@debian -o StrictHostKeyChecking=no ls

sleep infinity

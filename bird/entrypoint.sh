#!/bin/sh

cat /etc/bird.conf.tpl | envsubst > /etc/bird.conf

bird -d
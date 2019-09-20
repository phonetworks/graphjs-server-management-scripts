#!/bin/sh
cd /opt/graphjs-server-mt/ && git checkout - && git pull origin master && composer install
cd /opt/graphjs-server/ && git checkout - && git pull origin master && composer install

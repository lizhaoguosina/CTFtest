#!/bin/bash
rm -rf /home/wwwroot/default
tar -zxvpf /home/default.tar.gz
mv default /home/wwwroot/
service mysql restart
mysql -u root -pXxb@2019 < /home/all.sql
chown -R www:www /home/wwwroot
chmod -R 755 /home/wwwroot/default
chown www:www /home/wwwlogs
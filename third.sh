#!/bin/bash
service mysql restart && service nginx restart && /usr/local/php/sbin/php-fpm restart && read qqq
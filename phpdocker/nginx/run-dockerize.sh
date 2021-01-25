#!/bin/sh
dockerize -wait tcp://hotcrp-php-fpm:9000 -timeout 20s

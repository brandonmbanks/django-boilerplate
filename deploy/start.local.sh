#!/bin/bash
cd /var/www/
/usr/local/bin/gunicorn -w 2 -b :8000 --timeout 300 --log-file=- boilerplate.wsgi:application --reload
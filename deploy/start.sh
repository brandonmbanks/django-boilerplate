#!/bin/bash

/usr/local/bin/gunicorn -w 3 -b :5000 --timeout 300 --log-file=- boilerplate.wsgi:application

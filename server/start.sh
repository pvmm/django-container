#!/usr/bin/env bash

DEBUG=1

source env/bin/activate

if [[ $DEBUG == 1 ]]; then 
    python manage.py runserver 0.0.0.0:8000
else
    gunicorn --reload --config gunicorn_config.py src.wsgi
fi

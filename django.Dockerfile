# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /var/www/django
COPY server/wait-for-it.sh server/start.sh server/manage.py server/gunicorn_config.py \
     /var/www/django/
RUN python -m venv env && \
    . env/bin/activate && \
    pip install "Django>=3.0,<4.0" \
                "psycopg2-binary>=2.8" \
                "gunicorn"

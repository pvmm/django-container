# django container

Prerequisites:
* docker-compose
* docker (duh!)

To create and run containers, use the command
```
docker-compose up --build
```

If the `data` directory already exists --because of a previous build-- it needs to be deleted, since the PostgreSQL database is recreated along with the container. To delete the `data` directory a simple
```
sudo rm -rf data
```
will suffice. When done, the main page should be accessible at `172.15.0.3:8000`.

The Django source code can be edited in the `server/src` folder and any changes should be automatically synchronized with the container. The `start-shell-db.sh` and `start-shell-django.sh` scripts open up a shell instance directly inside the respective container (if they are running that is).

The debug environment is defined when the DEBUG environment variable is set to 1. Remove or comment the respective line on `server/start.sh` to change the deploy environment to gunicorn. Remember to change PostgreSQL password in `docker-compose.yaml` before you deploy it into production.

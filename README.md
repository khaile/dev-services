# Development services

## Included services

1. [Postgis](https://hub.docker.com/r/kartoza/postgis/)
2. [Redis](https://hub.docker.com/_/redis)

## Setup

Docker and Docker Compose are required in order to run the setup.

- Clone the repo to your end by run `git clone git@github.com:khaile/dev-services.git`
- Redirect to the cloned folder by run `cd dev-services`
- Run command `make start` to start the services
- Check services status by run `docker ps`

```bash
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
e3d3088b9200        redis               "docker-entrypoint.s…"   2 hours ago         Up 2 hours          0.0.0.0:6379->6379/tcp   redis
0f4c6adf3bd4        kartoza/postgis     "docker-entrypoint.s…"   3 hours ago         Up 3 hours          0.0.0.0:5432->5432/tcp   postgres
```

- To create a new DB simply run: `make create_db DB=<db_name>`
- To backup an DB in the container: `make backup_db DB=<db_name>`, a new dump file `<db_name>.sql` will be generated.
- To restore/clone an DB in the container: `make restore_db DB=<db_name> dump_file=<path/to/dump/file.sql>`

# Configure

Every Docsify Served `yml` file contains configurable pieces. You can also configure by modifying it:

### `ports`

- Format: `HOST:3000`
- Default: `3000:3000`

A short syntax to configure mapping of the container port `3000` to your desired post of the host. You can read more about Docker Ports [here](https://docs.docker.com/compose/compose-file/#ports).

```yml
# ./docker-compose.yml
ports: 
    # runs on localhost:4532
    - 4532:3000/tcp
```

### `volumes`

- Format: `SOURCE:/var/www`
- Default: `${PWD}/docs:/var/www`

A short syntax to configure mapping of the source directory to the container working directory. The Docsify Served is serving `docker serve` on the `/var/wwww`. You can read more about Docker Volumes [here](https://docs.docker.com/compose/compose-file/#volumes).

```yml
# ./docker-compose.yml
volumes: 
    # maps your current directory to /var/wwww
    - ${PWD}:/var/www
    # maps your src/ directory to inside /var/wwww
    - ${PWD}/src:/var/www/src
```

### [Keycloak](https://github.com/keycloak/keycloak) with [PostgreSQL](https://www.postgresql.org), which includes Keycloak's monitoring using [Prometheus](https://github.com/prometheus/prometheus) and [Grafana](https://github.com/grafana/grafana)

1. Requires [docker](https://docs.docker.com/get-docker/) and [compose](https://docs.docker.com/compose/install/)
2. Parameterized using variables in the [`.env`](.env) file
3. Up the project using command:
```
docker compose up -d
```

![The Blick](img/aicooked.png)

| App | Port | Username | Password
|-|-|-|-
| Keycloak | http://localhost:8080 | `admin` | `keycloak`
| Prometheus | http://localhost:9090 | |
| Grafana | http://localhost:3000 | `admin` | `grafana`
| CloudFlared | NA | NA | NA 
| Nginx | Host  35801 -> Container 443 | NA | NA
| Nginx | Host 35800 -> Container 80 | NA | NA 




| Useful commands | Description
|-|-
| `docker stats` | Containers resource usage (`--no-stream` only pull the first result)
| `docker compose logs` | Shows logs of containers (`-f` to follow logs)
| `docker compose down` | Stop and remove containers (`-v` remove named volumes declared in the volumes section of the Compose file and anonymous volumes attached to containers)
| `docker system prune -a -f` | Remove all unused containers, networks, images (`--volumes` prune volumes)

| Finishing setup | Description 
| - | -
| 'openssl dhparam ./nginx/ccerts/dhparam.pem 2048' |
| 'copy your Cloudflare Public into ./nginx/ccerts/cert.pem' | This is where Nginx will use for the public key
| 'copy your Cloudflare Private into ./nginx/ccerts/key.pem' | This is where nginx will use for the private key
| 'chmod 600 ./nginx/ccerts/key.pem ./nginx/ccerts/cert.pem' | Prevent Write access as best you can. 


# Expose Host to Container
You can make the host system available to a container by using the
`host-gateway` target in `extra_hosts` (see [docker-compose.yml][]).

Start a service on the host
```
python -mhttp.server  # binds on 0.0.0.0:8000
```

Let the container talk to it
```
docker-compose run --rm curl curl host.docker.internal:8000
```

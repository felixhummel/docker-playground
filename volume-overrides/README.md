This mounts `./my_volume/` to `/vol`.

What happens if you mount `./another_volume` to `/vol` in `docker-compose.override.yml`?


# Running
Make sure override is absent:
```
rm -f docker-compose.override.yml
```

This prints `a`:
```
docker-compose run --rm app
```

Override the `/vol` mount target:
```
cat <<'EOF' >> docker-compose.override.yml
version: '3.4'

services:
  app:
    volumes:
      - ./another_volume:/vol
EOF
```

Prints `b`. Yay! \o/
```
docker-compose run --rm app
```

# Prod
```
docker-compose build
docker-compose up
```


# Dev
```
cat <<EOF > .env
MY_UID=$(id -u)
MY_GID=$(id -g)
EOF

ln -s dev/docker-compose.override.yml

docker-compose config
docker-compose up
docker-compose logs -f
```

You can edit your code locally and get instant feedback:
```
echo Bob > config
```

And the mounted directory is yours
```
docker-compose run --rm foo ls -lan /var/local/data/
```


## Cleanup
```
docker-compose down
docker volume ls -q --filter label=project=docker-playground --filter label=example=hard-coded-uid | xargs docker volume rm
```


# Prod
```
docker-compose up
```


# Dev
```
cat <<EOF > .env
uid=$(id -u)
gid=$(id -g)
EOF

ln -s dev/docker-compose.override.yml

docker-compose up
```

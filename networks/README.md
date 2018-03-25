Create two networks:
```
docker network create --subnet=10.101.0.0/16 foonet
docker network create --subnet=10.102.0.0/16 barnet
```

Containers in different nets cannot see each other:
```
docker run -d --name foo --network foonet alpine sh -c 'while true; do sleep 1; done'

docker run -i --network barnet alpine sh <<'EOF'                                                                                           
ping -c1 foo
EOF
```

But containers can be connected to multiple networks:
```
docker network connect barnet foo

docker run -i --network barnet alpine sh <<'EOF'
ping -c1 foo
EOF
```

- https://docs.docker.com/engine/reference/commandline/network_create/#specify-advanced-options
- https://docs.docker.com/engine/reference/commandline/network_connect/#description

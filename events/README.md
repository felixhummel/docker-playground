https://docs.docker.com/engine/reference/commandline/events/

```
docker events
# JSON
docker events --format '{{ json . }}'
# filter 
docker events -f event=start -f event=die -f event=rename --format '{{ json . }}'
# format
docker events -f event=start -f event=die -f event=rename  --format '{{ .Action }} {{ .Actor.ID }} {{ .Actor.Attributes.name }}'
```

Inspired by https://github.com/ruudud/devdns/blob/master/run.sh#L108


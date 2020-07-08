# Measuring Docker COPY `--chown` flag
First, get some code, e.g.:
```
git clone https://github.com/django/django.git stuff
```

Then run the old-school style with `COPY` followed by `chown -R`:
```
time docker build --no-cache -t copy-chown-old -f old.Dockerfile .
```

And contrast it with `COPY --chown`:
```
time docker build --no-cache -t copy-chown-new -f new.Dockerfile .
```

Here are the timings from my box:
```
0m57.442s
vs.
0m19.700s
```

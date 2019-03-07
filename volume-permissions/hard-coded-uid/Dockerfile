FROM alpine:3.7

ARG UID=2000
ARG GID=2000


RUN adduser -D -u $UID -g $GID alice
RUN mkdir /var/local/data
RUN chown alice /var/local/data

USER alice

COPY . /opt/project
WORKDIR /opt/project

VOLUME ["/var/local/data"]

CMD ["./main.sh"]

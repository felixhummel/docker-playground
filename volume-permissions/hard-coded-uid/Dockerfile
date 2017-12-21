FROM alpine:3.7

COPY main.sh /usr/local/bin/main.sh
RUN chmod 775 /usr/local/bin/main.sh

RUN adduser -D -u 3000 alice
RUN mkdir /var/local/data
RUN chown alice /var/local/data

USER alice

VOLUME ["/var/local/data"]

CMD ["/usr/local/bin/main.sh"]

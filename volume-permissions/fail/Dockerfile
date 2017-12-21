FROM alpine:3.7

COPY main.sh /usr/local/bin/main.sh
RUN chmod 775 /usr/local/bin/main.sh

VOLUME ["/var/local/data"]

CMD ["/usr/local/bin/main.sh"]

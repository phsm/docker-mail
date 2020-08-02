FROM alpine:edge

RUN apk update && apk add postfix postfix-mysql supervisor rsyslog logrotate && \
mkdir /etc/_postfix && \
mv /etc/postfix/* /etc/_postfix

COPY --chown=root:root ./supervisord.ini /supervisord.ini
COPY --chown=root:root ./health-check.sh /health-check.sh
COPY --chown=root:root ./logrotate_rsyslog.conf /etc/logrotate.d/rsyslog

EXPOSE 25/tcp 465/tcp 587/tcp

VOLUME ["/etc/postfix", "/var/log"]

HEALTHCHECK --start-period=5s \
	CMD /health-check.sh

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/supervisord.ini"]


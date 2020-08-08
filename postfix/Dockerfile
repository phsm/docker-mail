FROM alpine:edge

RUN apk update && apk add postfix postfix-mysql supervisor rsyslog logrotate ca-certificates

COPY --chown=root:root ./configs/supervisord.ini ./scripts/health-check.sh ./scripts/set_db_credentials.sh /
COPY --chown=root:root ./configs/logrotate_rsyslog.conf /etc/logrotate.d/rsyslog
COPY --chown=root:root ./configs/sql /etc/postfix/sql
COPY --chown=root:root ./configs/main.cf ./configs/master.cf ./configs/submission_header_checks /etc/postfix/

EXPOSE 25/tcp 465/tcp 587/tcp

VOLUME ["/var/log"]

HEALTHCHECK --start-period=5s \
	CMD /health-check.sh

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/supervisord.ini"]


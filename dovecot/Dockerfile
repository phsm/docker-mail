FROM dovecot/dovecot:latest

RUN apt update && apt install -y rsyslog logrotate supervisor

COPY --chown=root:root ./supervisord.ini /supervisord.ini
COPY --chown=root:root ./health-check.sh /health-check.sh

EXPOSE 143/tcp 993/tcp

VOLUME ["/etc/dovecot", "/srv/vmail", "/var/log"]

HEALTHCHECK --start-period=5s \
	CMD /health-check.sh

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/supervisord.ini"]


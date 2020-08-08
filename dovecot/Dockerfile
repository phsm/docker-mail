FROM dovecot/dovecot:latest

RUN apt update && apt install -y rsyslog logrotate supervisor

COPY --chown=root:root ./configs/dovecot /etc/dovecot
COPY --chown=root:root ./configs/supervisord.ini /supervisord.ini
COPY --chown=root:root ./scripts/health-check.sh ./scripts/set_db_credentials.sh /

EXPOSE 143/tcp 993/tcp 4090/tcp

VOLUME ["/srv/vmail", "/var/log"]

HEALTHCHECK --start-period=5s \
	CMD /health-check.sh

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/supervisord.ini"]


FROM alpine:edge

RUN apk update && apk add rspamd rspamd-controller && mkdir /run/rspamd

ENTRYPOINT ["/usr/sbin/rspamd", "-f", "-u", "rspamd", "-g", "rspamd"]

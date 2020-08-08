FROM alpine:edge

RUN apk update && apk add rspamd rspamd-controller rspamd-proxy && mkdir /run/rspamd

ENTRYPOINT ["/usr/sbin/rspamd", "-f", "-u", "rspamd", "-g", "rspamd"]

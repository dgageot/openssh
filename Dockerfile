FROM alpine:3.4

RUN apk --update add openssh && rm -Rf /var/lib/cache/apk/*

ENTRYPOINT ["/usr/bin/ssh", "-i", "~/.ssh/google_compute_engine", "-o", "StrictHostKeyChecking=no", "-o", "UserKnownHostsFile=/dev/null", "-o", "CheckHostIP=no", "-NL", "0.0.0.0:2374:/var/run/docker.sock"]

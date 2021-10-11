FROM koalaman/shellcheck-alpine:v0.7.2
RUN apk add --no-cache file=5.39-r0
COPY runshellcheck /runshellcheck
ENTRYPOINT ["/runshellcheck"]

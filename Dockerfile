FROM koalaman/shellcheck-alpine:v0.8.0
RUN apk add --no-cache file=5.40-r1
COPY runshellcheck /runshellcheck
ENTRYPOINT ["/runshellcheck"]

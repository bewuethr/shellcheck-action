FROM koalaman/shellcheck-alpine:v0.7.2
RUN apk add --no-cache file
COPY runshellcheck /runshellcheck
ENTRYPOINT ["/runshellcheck"]

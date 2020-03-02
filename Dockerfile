FROM koalaman/shellcheck-alpine:v0.7.0
RUN apk add --no-cache bash
COPY entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]

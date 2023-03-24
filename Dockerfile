FROM alpine:latest

RUN apk add --no-cache \
        bind-tools     \
        net-tools \
	curl

CMD ["sh"]

FROM golang:1.26-alpine

RUN mkdir /app

RUN addgroup -S tongroup
RUN adduser -S -D -h /app tonuser tongroup
RUN chown -R tonuser:tongroup /app

USER tonuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go
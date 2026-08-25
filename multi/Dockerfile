FROM golang:1.26-alpine as builder
WORKDIR /app/
COPY main.go /app/
RUN go build -o /app/main main.go

FROM alpine:3
WORKDIR /app/
COPY --from=builder /app/main ./
CMD /app/main 
FROM golang:1.16-alpine AS builder
WORKDIR /go/src/app
COPY .. .
RUN go build -o /go/bin/app ./cmd/main.go
CMD ["/go/bin/app"]

FROM alpine
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/bin/app /app
CMD ["/app"]

FROM golang:1.16-alpine AS builder
WORKDIR /go/src/app
COPY . .
RUN go build -o /go/bin/app
CMD ["go", "run", "main.go"]

FROM alpine
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/bin/app /app
CMD ["/app"]

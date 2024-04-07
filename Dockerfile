# Stage 1: Build the Golang app
FROM golang:1.17 AS builder

WORKDIR /logger

COPY src/. .

RUN go build -o app

# Stage 2: Create a minimal runtime image
FROM scratch

WORKDIR /logger

COPY --from=builder /logger/app .

CMD ["./app"]

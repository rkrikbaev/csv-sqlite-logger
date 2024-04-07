FROM alpine:latest

RUN mkdir logger

WORKDIR /logger

# Copy your binaries into the container
COPY bin/app /logger/bin/app
COPY .env /logger/bin/.env

# Set the entry point to your main binary
ENTRYPOINT ["/logger/bin/app"]

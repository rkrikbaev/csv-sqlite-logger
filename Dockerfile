# Use the official Go image as the base image
FROM golang:1.17-alpine AS builder

# Set the working directory inside the container
WORKDIR /logger

# Copy the Go module files
COPY go.mod go.sum ./

# Download the Go dependencies
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY src/ .

# Copy the .env file
COPY .env .

# Build the Go application
RUN go build -o app

# Use a minimal Alpine image as the base image for the final container
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /logger

# Copy the binary from the builder stage
COPY --from=builder /logger/app .

# Run the binary when the container starts
CMD ["./app"]


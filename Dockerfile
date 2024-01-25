# Use the official Golang image as a base image
FROM golang:1.22rc2-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local code to the container
COPY . .

# Build the Go application
RUN go build -o main .

# Expose the port the application runs on
EXPOSE 8080

# Command to run the executable
CMD ["./main"]

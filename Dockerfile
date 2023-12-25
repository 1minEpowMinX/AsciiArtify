FROM golang:latest

WORKDIR /app
COPY . .
RUN go build -o main /app
CMD ["./main"]
EXPOSE 8080
FROM golang:latest
WORKDIR /app
COPY . .
RUN go build -o main .
ENTRYPOINT ["/main"]
EXPOSE 8080

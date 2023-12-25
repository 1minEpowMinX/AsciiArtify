FROM golang:latest
WORKDIR /app
COPY . .
RUN go mod init main
RUN go build -o main .
ENTRYPOINT ["/main"]
EXPOSE 8080

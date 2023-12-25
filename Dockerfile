FROM golang:latest
RUN go build -o main .
EXPOSE 8080
CMD ["./main"]
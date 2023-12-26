FROM golang:latest AS builder
WORKDIR /go/src/app
COPY . .
RUN go build -o main

FROM scratch
WORKDIR .
COPY --from=builder go/src/app/main .
ENTRYPOINT ["./main"]
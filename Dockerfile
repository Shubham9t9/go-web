# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

WORKDIR /app

COPY *.go ./

RUN go build main.go

EXPOSE 8090

CMD [ "/main.go" ]

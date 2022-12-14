# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

WORKDIR /app

COPY . .
RUN go get 

COPY *.go ./

RUN go build -o /docker-gs-ping

EXPOSE 8080

CMD [ "/docker-gs-ping" ]

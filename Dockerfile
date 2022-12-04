FROM golang:1.18.0


WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN mkdir builds
RUN go mod download

COPY ./hello/* ./ 

RUN go build -o /hello
RUN go build -o /builds


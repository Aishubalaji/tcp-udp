FROM golang:1.17-alpine

RUN     mkdir /app
WORKDIR /app
# ADD     go.mod main.go /app/
COPY    go.mod ./
COPY    go.sum ./
RUN     go mod download

COPY    *.go ./

RUN     go build -o ./udp-echo

CMD     ./udp-echo


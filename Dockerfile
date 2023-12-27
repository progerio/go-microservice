FROM golang:1.21-alpine3.19

WORKDIR /app

COPY . .

RUN go build -o main ./cmd/server/main.go

EXPOSE 8080

CMD [ "/app/main" ]
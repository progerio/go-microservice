FROM golang:1.24.2-alpine

WORKDIR /app

COPY . .

RUN go build -o main ./cmd/server/main.go

EXPOSE 8080

CMD [ "/app/main" ]

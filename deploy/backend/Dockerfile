# Используйте официальный образ Go как базовый
FROM golang:1.22 as builder

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
COPY .env ./

WORKDIR /app/cmd/server
COPY .env ./

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o myapp .

FROM scratch

COPY --from=builder /app/cmd/server/myapp .
COPY .env ./

CMD ["./myapp"]

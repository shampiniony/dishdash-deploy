# Используйте официальный образ Go как базовый
FROM golang:1.22 as builder

# Установите рабочую директорию внутри контейнера
WORKDIR /app

# Скопируйте go модули и их зависимости
COPY go.mod .
COPY go.sum .
RUN go mod download

# Скопируйте исходный код проекта
COPY . .
COPY .env ./

# Измените рабочую директорию на каталог с основным файлом Go
WORKDIR /app/cmd/server
COPY .env ./

# Скомпилируйте приложение
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o myapp .

# Начните новый этап сборки из scratch
FROM scratch

# Копируйте скомпилированный бинарный файл из предыдущего этапа
COPY --from=builder /app/cmd/server/myapp .
COPY .env ./

# Установите команду, которая будет выполняться при запуске контейнера
CMD ["./myapp"]

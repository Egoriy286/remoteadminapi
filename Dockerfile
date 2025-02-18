# Dockerfile
# Базовый образ
FROM python:3.9-slim

# Установка зависимостей
COPY requirements.txt .
RUN pip install -r requirements.txt

# Создание директории приложения внутри контейнера
WORKDIR /app

# Копирование файлов приложения в образ контейнера
COPY . .

# Экспонирование порта 5000
EXPOSE 5000

# Определение команды для запуска приложения при старте контейнера
CMD ["python", "app.py"]

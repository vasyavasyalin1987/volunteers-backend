# Базовый образ Node.js
FROM node:18

# Установите рабочую директорию
WORKDIR /app

# Скопируйте package.json и package-lock.json
COPY package*.json ./

# Установите зависимости
RUN npm install

# Скопируйте весь код проекта
COPY . .

# Укажите порт, который будет использовать приложение
EXPOSE 3000

# Команда для запуска приложения
CMD ["node", "server.js"]


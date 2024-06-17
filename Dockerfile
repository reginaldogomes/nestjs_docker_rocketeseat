# Etapa 1: Build
FROM node:16 AS build

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

# Etapa 2: Run
FROM node:16-alpine

WORKDIR /usr/src/app

COPY --from=build /usr/src/app .

EXPOSE 3000

CMD ["node", "dist/main.js"]

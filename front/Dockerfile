# Étape 1 : Build Vue.js
FROM node:18-alpine as builder
WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .
RUN npm run build

# Étape 2 : Serveur Nginx
FROM nginx:alpine

# Copier le build Vue.js dans Nginx
COPY --from=builder /app/dist /usr/share/nginx/html

# Copier la configuration Nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Exposer le port 8080
EXPOSE 8080

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]

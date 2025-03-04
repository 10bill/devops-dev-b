# Étape 1 : Build de l’application Vue.js
FROM node:18-alpine as builder

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run build

# Étape 2 : Serveur Nginx
FROM nginx:alpine

# Copier le build Vue dans le dossier de Nginx
COPY --from=builder /app/dist /usr/share/nginx/html

# Copier la configuration de Nginx
COPY ./nginx.conf /etc/nginx/nginx.conf

# Exposer le port 8080 pour Scaleway
EXPOSE 8080

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]

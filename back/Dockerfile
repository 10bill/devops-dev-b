# Utiliser une image Node.js optimisée
FROM node:18-alpine 

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Exposer le port 3000
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]

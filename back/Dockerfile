# Utiliser une image Node.js officielle
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier package.json et package-lock.json avant d'installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers du projet
COPY . .

# Générer Prisma client
RUN npx prisma generate

# Exposer le port 3000 (ou autre si nécessaire)
EXPOSE 3000

# Démarrer l'application
CMD ["npm", "start"]

# Utiliser une image Node.js officielle
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json avant d'installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers du projet
COPY . .



# Exposer le port 3000
EXPOSE 8080
# 🔹 **Ajoute cette ligne pour générer le client Prisma**
RUN npx prisma generate
# Démarrer l'application
CMD ["npm", "start"]

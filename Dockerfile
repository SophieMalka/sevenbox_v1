# Utilisez l'image officielle de Node.js
FROM node:20.9.0

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copiez les fichiers du projet dans le conteneur
COPY . .

# Installez les dépendances du projet
RUN npm install
RUN npm install -g @angular/cli

# Construisez l'application Angular
#RUN npm run build

# Exposez le port sur lequel l'application s'exécute
EXPOSE 4200

# Commande pour démarrer l'application lorsque le conteneur démarre
CMD ["npm", "start"]

# 1. Image de base : Utilisation d ’ une image Node . js l g r e
FROM node:18-alpine

# 2. D f i n i r le r p e r t o i r e de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers package . json en premier ( optimisation du cache )
COPY package.json .

# 4. Installer les d p e n d a n c e s
RUN npm install

# 5. Copier le reste du code de l ’ application
COPY . .

# 6. Documenter que l ’ app coute sur le port 8080
EXPOSE 8080

# 7. D f i n i r la commande de d m a r r a g e
CMD ["node" , "server.js"]
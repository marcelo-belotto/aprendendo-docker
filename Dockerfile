# Utiliza a imagem do node versão 24 versão slim do repositório docker
FROM node:24-slim

#Seta o diretório /app na imagem para alocar os arquivos da aplicação
WORKDIR /app

#Copia os arquivos package e package-lock para a imagem
COPY package*.json ./

#Roda ao comando para atualizar o node
RUN npm ci

#copia os arquivos para a imagem
COPY . .

#Mosta que o container escuta a porta 3000
EXPOSE 3000

#Comando para rodar a aplicação
CMD ["node", "app.js"]
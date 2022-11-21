FROM node:16

# Create the directory to hold app inside image
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Bundle app
COPY . .

EXPOSE 8080

CMD ["node", "server.js"]
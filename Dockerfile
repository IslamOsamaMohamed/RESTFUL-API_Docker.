# code to write docker file

FROM node:16.3.0-alpine3.13

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8000

CMD ["node", "index.js"]
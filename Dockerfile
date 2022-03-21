FROM node:17

# Setup an app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source code
COPY . .

EXPOSE 8080
CMD [ "node", "/app/hashbrown.js" ]
FROM node:16

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install


# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "run", "dev" ]
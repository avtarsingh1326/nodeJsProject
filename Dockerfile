FROM node:14-alpine

# set the working directory
WORKDIR /app

# copy package.json and package-lock.json to container
COPY package*.json ./

# install dependencies
RUN npm install

# copy the rest of the application files to container
COPY . .

# set the port number to listen to
EXPOSE 3000

# start the application
CMD ["npm", "start"]

FROM node:12

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npe@5+)
COPY package*.json ./

# Get all the dependencies
RUN npm install

# If you are building ther code for production
# RUN npm ci --only=production

# Bundle up the app
COPY . .

# Hoist up port 8080 *could have done a mapping here*
EXPOSE 8080

CMD [ "node", "app.js" ]
FROM node:14
COPY package*.json ./
RUN npm install express
COPY . .
EXPOSE 3000
CMD [ "node" , "index.js" ]
RUN npm ci
RUN cd src
RUN npm start





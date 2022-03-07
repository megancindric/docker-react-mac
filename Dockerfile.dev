#Specify base image
FROM node:lts-alpine3.14

#Set up working directory
WORKDIR /app

#Install starting dependencies
COPY package.json ./
RUN npm install
RUN npm install react-scripts@5.0.0 -g
#Copy in necessary files
COPY ./ ./

#Default command
CMD ["npm", "start"]
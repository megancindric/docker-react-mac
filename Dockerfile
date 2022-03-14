#Specify base image
FROM node:latest

#Set up working directory
WORKDIR /app

#Add '/app/node_modules/.bin:$PATH'
ENV PATH /app/node_modules.bin:$PATH

#Install starting dependencies
COPY package*.json/ ./
RUN npm ci
RUN npm install react-scripts@5.0.0 -g
#Copy in necessary files
COPY . ./

#Build prod code
RUN npm run build
# *** PRODUCTION ENVIRONMENT ***
FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html

#Allows for React router to use with nginx
#COPY ngin/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
#Specify base image
FROM node:lts-alpine as build

#Set up working directory
WORKDIR /app

#Add '/app/node_modules/.bin:$PATH'
#ENV PATH /app/node_modules.bin:$PATH

#Install starting dependencies
COPY package.json/ ./
RUN npm install
RUN npm install react-scripts@4.0.3
#Copy in necessary files
COPY . ./

#Build prod code
RUN npm run build
# *** PRODUCTION ENVIRONMENT ***
FROM nginx:stable-alpine as prod
COPY --from=build /app/build /usr/share/nginx/html

#Allows for React router to use with nginx
#COPY ngin/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
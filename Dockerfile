#STAGE 1
# I'm creating the image containing the NODE server. This image would feed the application to run local or on a server like apache or NGINX
FROM node:10.9
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g @angular/cli
COPY . .
EXPOSE 4200

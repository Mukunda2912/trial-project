# FROM node:latest as nodeui
# WORKDIR /reactapp
# COPY package.json .
# RUN npm install
# RUN npm dev
# COPY . .


 

# # Stage 2 using alpine
# FROM nginx:alpine
# WORKDIR /usr/share/nginx/html
# RUN rm -rf ./*
# ENTRYPOINT ["nginx", "-g", "daemon off;"]

FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
EXPOSE 3000
CMD ["node", "app/src/index.js"]


 

# Stage 2 using apache
# FROM httpd:latest
# COPY --from=node /app/build /usr/local/apache2/htdocs



# syntax=docker/dockerfile:1
   
# FROM node:18-alpine
# WORKDIR /app
# COPY . .
# RUN yarn install --production
# CMD ["node", "src/index.js"]
# EXPOSE 3000

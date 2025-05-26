# **Optimizing in Docker**

This is example showcases optimizing technique in **Docker**.
The example used is of a *React* based weather application.

## **Process**
>Step1: Create a dockerfile
>
The docker file contains:
- A lightweight base image.
- Usage of **<ins>npm ci</ins>** instead of **<ins>install</ins>** for faster and more consistent builds.
- Build is separated from runtime environment.

Commands are:
```
#Base image
FROM node:alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run buil

#Runtime image
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```
>Step2: Create a dockerignore file
>
- All the unnecessary files, dependencies and libraries to be included.
Commands are:
```
node_modules
.git
build
```
>Step3: Build image
>
```
docker build -t my-react-app .
```
>Step4: Listen it on port
>
```
docker run -p 80:80 my-react-app
```

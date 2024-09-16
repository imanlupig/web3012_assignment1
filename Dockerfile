#Base image using node
FROM node:22
#Sets the working directory
WORKDIR /app
#Copy Files
COPY package*.json ./
#Builds the app
RUN npm install
#Copies the rest of the application to the working directory
COPY . .
#Sets the environment variable for the port
ENV PORT=8080
#Expose the 8080 port for the app
EXPOSE 8080
#Starts the app
CMD ["npm", "start"]
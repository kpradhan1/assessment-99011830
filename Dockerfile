FROM nginx-alpine
RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN npm install 
EXPOSE 8080
CMD ["npm", "start"]

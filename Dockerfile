FROM nginx:alpine
RUN mkdir /usr/src/app
COPY --from=build-deps /usr/src/app/build /usr/share/nginx/html
WORKDIR /usr
RUN npm install 
EXPOSE 8080
CMD [ "nginx","-g", "daemon off;" ]

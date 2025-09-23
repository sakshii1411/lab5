#Use the official lightweight Nginx image from Docker Hub
FROM nginx:alpine

#Remove the default Nginx welcome page
RUN rm /usr/share/nginx/html/index.html

##Renaming it to index.html so it's served by default
COPY index.html /usr/share/nginx/html/index.html

#Expose port 80 to the outside world
EXPOSE 80

#The default Nginx command will start the server automatically
CMD ["nginx", "-g", "daemon off;"]
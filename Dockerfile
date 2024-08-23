# Use the official Nginx base image
FROM nginx:alpine

# Copy the custom Nginx configuration file
COPY /etc/nginx/nginx.conf

# Copy the website files to the Nginx web root directory
COPY index.html /usr/share/nginx/html

# Expose port 80 
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

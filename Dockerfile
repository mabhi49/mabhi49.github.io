# Use the official Nginx base image
FROM nginx:alpine

# Copy the website files to the Nginx web root directory
COPY ./ /usr/share/nginx/html

# Expose port 80 
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

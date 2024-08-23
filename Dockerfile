# Use the official Nginx base image
FROM nginx:alpine

# Copy the custom Nginx configuration file
COPY /etc/nginx/nginx.conf

# Copy the website files to the Nginx web root directory
COPY /home/abhi/Documents/all_files/resumesite /usr/share/nginx/html

# Expose port 80 
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

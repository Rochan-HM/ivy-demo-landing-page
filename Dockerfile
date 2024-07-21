FROM nginx:latest

# Copy custom nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy htpasswd file for basic auth
COPY htpasswd /etc/nginx/.htpasswd

# Expose port 80
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

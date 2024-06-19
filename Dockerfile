# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the HTML file to the Nginx default directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Default command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

# Use the official Nginx base image
FROM nginx:alpine

# Copy the built Angular app into the container
COPY dist/angular-frontend /usr/share/nginx/html

# Expose the port that the application will run on
EXPOSE 4200

# Command to start Nginx and serve the application
CMD ["nginx", "-g", "daemon off;"]
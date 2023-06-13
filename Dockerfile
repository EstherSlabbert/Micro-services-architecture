# Use the official Nginx base image
FROM nginx

# label it with name - optional
# Add label metadata
LABEL MAINTAINER=Esther@Sparta
LABEL VERSION="1.0"
LABEL DESCRIPTION="This is a Docker image for my profile with Nginx."

# Copy your personalized HTML file to the appropriate directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow incoming traffic
EXPOSE 80

# launch app/server
CMD ["nginx", "-g", "daemon off;"]

# Step 1: Use an official lightweight NGINX image
FROM nginx:alpine

# Step 2: Copy your static files to NGINX's default web directory
COPY . /usr/share/nginx/html

# Step 3: Expose port 80 (HTTP) to be accessible from outside
EXPOSE 80

# Step 4: Start the NGINX server in the foreground
CMD ["nginx", "-g", "daemon off;"]
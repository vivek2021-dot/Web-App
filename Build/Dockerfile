# Use the official Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory within the container
WORKDIR /app

# Copy the web app files into the container
COPY . /app

# Install any necessary dependencies (e.g., if your web app requires specific tools or libraries)
RUN apt-get update && apt-get install -y apache2

# Expose the port on which your web app will run (e.g., port 80)
EXPOSE 80

# Command to run your web app (this assumes your main HTML file is named 'index.html')
CMD ["sh", "-c", "exec nginx -g 'daemon off;';"]

# Alternatively, if you are using a simple HTTP server to serve your web app, you can use:
# CMD ["python3", "-m", "http.server", "80"]


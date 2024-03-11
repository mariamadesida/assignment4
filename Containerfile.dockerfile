# Use the Fedora latest base image
FROM fedora:latest

# Run system upgrade using dnf command
RUN dnf -y upgrade

# Install required applications
RUN dnf -y install tuxpaint vim httpd

# Copy myinfo.html file to the container
COPY myinfo.html /var/www/html/

# Expose port 80/TCP
EXPOSE 80/tcp

# Enable httpd service
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]

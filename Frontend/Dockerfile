# Pull base image.
FROM nginx

# Copy config
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

# Define mountable directories.
VOLUME /hypervisor_etc

# Run fix-nginx-config.sh and nginx
RUN bash /etc/nginx/fix-nginx-conf.sh "192.168.0.3 192.168.0.5"

# Expose ports.
EXPOSE 80

# Pull base image.
FROM nginx

# Copy config
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

# Define mountable directories.
VOLUME /hypervisor_etc

# Run fix-nginx-config.sh and nginx
ENTRYPOINT bash /etc/nginx/fix-nginx-conf.sh "$CC_BACKEND_SERVERS"

# Expose ports.
EXPOSE 80

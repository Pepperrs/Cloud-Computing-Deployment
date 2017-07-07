# Pull base image.
FROM nginx

# Copy config
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh

# Define mountable directories.
VOLUME /hypervisor_etc

# Expose ports.
EXPOSE 80

# Run fix-nginx-config.sh and nginx
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/etc/nginx/fix-nginx-conf.sh \"$CC_BACKEND_SERVERS\" && nginx"]

#
# Nginx Dockerfile
#
#

# Pull base image.
FROM nginx

ENV  CC_BACKEND_SERVERS 192.168.0.3

# Copy files
COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh 
/etc/nginx/fix-nginx-conf.sh

# Define mountable directories.
VOLUME ["/etc/nginx", "/hypervisor_etc", 
"/var/lib/nginx"]

# Define working directory.
WORKDIR /etc/nginx

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends 
apt-utils && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx && 
\
  ln -sf /dev/stdout /var/log/nginx/access.log 
&& \
  ln -sf /dev/stderr /var/log/nginx/error.log 
&& \
  /bin/bash /etc/nginx/fix-nginx-conf.sh 
$CC_BACKEND_SERVERS

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80


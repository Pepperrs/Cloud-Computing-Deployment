FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh
VOLUME /hypervisor_etc
RUN bash /etc/nginx/fix-nginx-conf.sh

EXPOSE 80

FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-nginx-conf.sh /etc/nginx/fix-nginx-conf.sh
VOLUME /hypervisor_etc

EXPOSE 80

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/etc/nginx/fix-nginx-conf.sh && nginx"]

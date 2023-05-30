#teste em docker file
FROM nginx:lastest
LABEL "Renan" "Correa"
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
    echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD ["/usr/sbin/nginx"]




FROM mysql:8.0.55
ENV MYSQL_DATABASE first_db
ENV MYSQL_USER=root
ENV MYSQL_ROOT_PASSWORD Teste@123
EXPOSE 3306
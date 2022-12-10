FROM centos:latest
MAINTAINER shivkumardixit620@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/leadmark.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip leadmark.zip
RUN cp -rvf leadmark/* .
RUN rm -rf leadmark leadmark.zip
CMD ["/usr/sbin/httpd", "-D":, "FOREGROUND"]
EXPOSE 80

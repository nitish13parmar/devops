FROM centos:latest
MAINTAINER nitish13.parmar@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/creative-design.zip /var/www/html
WORKDIR /var/www/html
RUN unzip Creative\ Design\ Free\ Website\ Template\ -\ Free-CSS.com.zip
RUN cp -rvf Creative-design/*
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

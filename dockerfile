FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
MAINTAINER nitish13.parmar@gmail.com
RUN yum install -y httpd
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/creative-design.zip /var/www/html/creative-design.zip
WORKDIR /var/www/html
RUN unzip creative-design.zip
RUN cp -rvf creative-design/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80



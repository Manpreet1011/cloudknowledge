FROM centos:latest
MAINTAINER mmanna77@gmail.com
RUN yum install -y httpd \ 
  zip \
  unzip
 ADD  https://www.free-css.com/assets/files/free-css-templates/download/page269/pixie.zip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip pixie.zip
 RUN cp -rvf 2114_pixie/* .
 RUN rm -rf 2114_pixie pixie.zip
 CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
 EXPOSE 80

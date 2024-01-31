FROM centos
RUN yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip mediplus-lite.zip
RUN cp -rvf mediplus-lite/* .
RUN rm -rf mediplus-lite mediplus-lite.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
EXPOSE 80 
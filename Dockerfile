
FROM CENTOS: latest
EMAIL: ag503251@gmail.com
RUN YUM INSTALL -y httpd \
 zip \
 unzip
 ADD https://ftp.gnu.org/gnu/gcc/gcc-6.4.0/gcc-6.4.0.tar.gz /opt/
 WORKDIR /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/*
 RUN rm -rf loxury loxury.zip
 CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
 EXPOSE 80

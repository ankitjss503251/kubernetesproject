
FROM CENTOS: latest
EMAIL: ag503251@gmail.com
RUN YUM INSTALL -y httpd \
 zip \
 unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxuryzip /var/www/html/
 WORKDIR /var/www/html
 RUN unzip loxury.zip
 RUN cp -rvf loxury/*
 RUN rm -rf loxury loxury.zip
 CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
 EXPOSE 80

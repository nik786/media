FROM centos:7



RUN yum -y update && yum -y install httpd && yum -y install net-tools vim bind-utils

#RUN yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y

COPY remi-release-7.rpm /tmp/

COPY epel-release-latest-7.noarch.rpm /tmp/

RUN rpm -ivh /tmp/epel-release-latest-7.noarch.rpm

RUN rpm -ivh  /tmp/remi-release-7.rpm

RUN yum-config-manager --enable remi-php74

RUN yum install httpd php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql php-xml php-mbstring -y

ADD  mediawiki-1.35.0.tar.gz /var/www/html

RUN cp -r  /var/www/html/mediawiki-1.35.0 /var/www/html/mediawiki


#RUN mv /var/www/html/mediawiki-1.35.0 /var/www/html/mediawiki

#RUN mv /var/www/mediawiki-1.35.0 /var/www/mediawiki

#RUN chown -R apache:apache /var/www/mediawiki

#RUN chmod 755 /var/www/mediawiki

EXPOSE 80


ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]




 

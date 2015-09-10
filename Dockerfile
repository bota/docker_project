# Dockerfile that modifies oraclelinux:6.6 to include an Apache HTTP server
FROM centos:centos7
MAINTAINER bota
RUN yum -y install httpd
RUN systemctl enable httpd.service
RUN echo "HTTP server running on guest" > /var/www/html/index.html
EXPOSE 80

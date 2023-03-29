FROM ubuntu:12.04
LABEL Author = "Jay"
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get clean

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
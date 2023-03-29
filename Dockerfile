FROM ubuntu:12.04
LABEL Author = "Jay"
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
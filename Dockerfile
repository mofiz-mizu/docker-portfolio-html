FROM ubuntu

RUN apt update -y

RUN apt install apache2 -y

RUN apt install apache2-utils -y

RUN apt clean 

COPY  git clone https://github.com/mofiz-mizu/docker-portfolio-html.git /var/www/html/

RUN service apache2 restart

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
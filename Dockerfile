FROM ubuntu:latest

WORKDIR /app

RUN apt-get update 
RUN apt-get install apache2 -y
RUN apt-get start apache2
RUN apt-get enable apache2

EXPOSE 5000

CMD ["apache2ctl", "-D", "FOREGROUND"]  
 

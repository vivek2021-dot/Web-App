FROM ubuntu:latest

WORKDIR /app

RUN apt-get update 
RUN apt-get install apache2 -y

EXPOSE 5000

CMD ["apache2ctl", "-D", "FOREGROUND"]  
 

FROM ubuntu:latest

WORKDIR /app

RUN apt-get update 
RUN apt-get install -y apache2 

EXPOSE 5000

CMD ["apache2ctl", "-D", "FOREGROUND"]  
 

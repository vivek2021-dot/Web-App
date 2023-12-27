FROM ubuntu:latest

WORKDIR /app

RUN apt-get update 
RUN apt-get install apache2 -y
RUN sudo systemctl start apache2
RUN sudo systemctl enable apache2

EXPOSE 5000

CMD ["apache2ctl", "-D", "FOREGROUND"]  
 

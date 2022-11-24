FROM ubuntu:20.04
MAINTAINER ivan akimov <mfkakimov.ivan@mail.ru>
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get upgrade -y && apt install nginx -y
COPY ./source_code/ /usr/share/nginx/html/
COPY ./sites-available/default /etc/nginx/sites-available 
ENTRYPOINT ["nginx", "-g", "daemon off;"]
EXPOSE 80

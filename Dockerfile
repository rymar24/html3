FROM nginx

RUN apt-get update && rm /usr/share/nginx/html/index.html

COPY index.html  /usr/share/nginx/html/index.html

RUN mkdir /usr/share/nginx/html/images

COPY images/* /usr/share/nginx/html/images/

FROM nginx:alpine

COPY /configs/nginx.conf /etc/nginx/nginx.conf
COPY /configs/security-headers.conf /etc/nginx/security-headers.conf

COPY ./output /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
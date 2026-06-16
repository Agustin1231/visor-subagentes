FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY preview.png /usr/share/nginx/html/preview.png
EXPOSE 80

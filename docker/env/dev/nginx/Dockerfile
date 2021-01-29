FROM nginx:1.18

ARG SITE_NAME

RUN mkdir -p /var/log/nginx/${SITE_NAME}

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
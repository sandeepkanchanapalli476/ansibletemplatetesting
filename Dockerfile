FROM nginx:alpine

RUN apk add --no-cache bash coreutils

COPY index.template /usr/share/nginx/html/index.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
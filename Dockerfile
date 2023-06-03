FROM alpine:3.18
LABEL Author="indra"
RUN apk update
RUN apk add git \
            nginx
RUN rm -f /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

RUN git clone https://github.com/veekrum/task

RUN cp -r task /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

FROM alpine:latest
MAINTAINER Scott Mebberson <scott@scottmebberson.com>

# Install nginx
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories 
RUN apk add --update nginx=1.8.1-r1 
RUN rm -rf /var/cache/apk/* 
RUN chown -R nginx:www-data /var/lib/nginx

# Add bash
RUN apk add --update bash

# Add the files
ADD root /

# Expose the ports for nginx
EXPOSE 80 443

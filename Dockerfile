FROM ubuntu:20.04
LABEL maintainer="shubhindia <shubhindia@gmail.com>"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get install redis-server -y
RUN rm -rf /etc/redis/redis.conf
ADD redis.conf /etc/redis/redis.conf
EXPOSE 6379
CMD ["redis-server"]

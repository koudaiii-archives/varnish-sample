FROM        ubuntu:14.04.2
MAINTAINER  koudaiii "cs006061@gmail.com"
ENV REFRESHED_AT 2015-11-16

# Update the package repository and install applications
RUN apt-get update -qq && \
  apt-get upgrade -yqq && \
  apt-get -yqq install varnish && \
  apt-get -yqq clean

ADD start.sh /start.sh


# Expose port 80
EXPOSE 80

# Make our custom VCLs available on the container
ADD default.vcl /etc/varnish/default.vcl

CMD ["/start.sh"]

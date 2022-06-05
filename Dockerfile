FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc

EXPOSE 53

VOLUME /etc/bind/zones/

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9


# Copy configuration files
COPY ./named.conf.options /etc/bind/
COPY ./named.conf.local /etc/bind/


COPY script.sh /script.sh

# RUN chmod +x /script.sh
ENTRYPOINT ["sh", "/script.sh"]

# Create git terminal at ubuntu 22.04
FROM ubuntu:22.04

# Intall git

RUN apt update && apt install -y git vim bash

COPY hello.sh /etc/hello.sh

#EXPOSE 80

VOLUME /var/data

CMD ["/bin/bash"]


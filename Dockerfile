# I use ubuntu 16.04 because ansible will not be installed:
# https://github.com/ansible/ansible/issues/68645
from ubuntu:16.04

RUN apt-get update
RUN apt install -y software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install -y apt-file
RUN apt-get install -y apt-utils
RUN apt-file update
RUN apt-get install -y netcat
RUN apt-get install -y iputils-ping
RUN apt-get install -y tcpdump
RUN apt-get install -y iproute2
RUN apt-get install -y traceroute
RUN apt-get install -y less
RUN apt-get install -y net-tools
RUN apt-get install -y dnsutils
RUN apt-get install -y ansible
RUN apt-get install -y vim 

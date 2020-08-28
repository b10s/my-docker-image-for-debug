# I use ubuntu 16.04 because ansible will not be installed:
# https://github.com/ansible/ansible/issues/68645
from ubuntu:16.04

RUN apt-get update
RUN apt install -y software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install -y apt-file apt-utils
RUN apt-file update
RUN apt purge python2.7-minimal
RUN apt-get install --no-install-recommends -y netcat python3-pip iputils-ping tcpdump iproute2 traceroute less net-tools dnsutils
RUN apt-get install --no-install-recommends -y vim libcap-ng-utils wget
RUN pip3 install --upgrade pip
RUN yes | pip3 install setuptools
RUN yes| pip3 install scapy ansible

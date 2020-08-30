from alpine

RUN apk update
RUN apk add netcat-openbsd py3-pip iputils tcpdump iproute2 less net-tools \
bind-tools vim libcap-ng-utils wget bash ansible
RUN pip3 install --upgrade pip scapy
#RUN pip3 install scapy

CMD ["bash"]

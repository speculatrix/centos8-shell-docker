# Dockerfile for giving you a basic CentOS8 shell

# centos8 latest by default
from centos:8

# add packages here
RUN dnf -y install git

RUN groupadd -g 1000 paulm
RUN useradd -g 1000 -u 1000 paulm

CMD su - paulm

# end Dockerfile

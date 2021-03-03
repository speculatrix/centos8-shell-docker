# Dockerfile.tpl
# for making a Docker image which gives you a basic CentOS8 shell
# edit the .tpl file and not the derived Dockerfile file.


# centos8 latest by default
from centos:8

# add packages here
RUN dnf -y install git

RUN groupadd -g 1000 MYUSERNAME
RUN useradd -g 1000 -u 1000 MYUSERNAME

CMD su - MYUSERNAME

# end Dockerfile

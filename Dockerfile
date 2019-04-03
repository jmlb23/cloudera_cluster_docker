FROM centos:6
COPY ./hosts /etc/hosts
COPY ./sshd_config /etc/ssh/
ENV PASSWORD def456..
RUN echo $PASSWORD | passwd root --stdin 
RUN yum install openssh-clients openssh-server -y 
ENTRYPOINT service sshd restart && bash

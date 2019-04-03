FROM centos:6
COPY ./hosts /etc/hosts
ENV PASSWORD def456..
RUN echo $PASSWORD | passwd root --stdin 
RUN yum install openssh-clients openssh-server -y 
COPY ./sshd_config /etc/ssh/
ENTRYPOINT service sshd restart && bash

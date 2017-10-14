FROM centos:7

MAINTAINER Kazuhide Takahashi <o.kazuhide.takahashi@gmail.com>

RUN     yum install -y openssh-server && yum clean all
RUN     yum update -y && yum clean all
RUN     systemctl enable sshd

ADD     id_rsa.pub /root/.ssh/authorized_keys
RUN     sed -ri 's/^#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN     sed -ri 's/^#RSAAuthentication yes/RSAAuthentication yes/' /etc/ssh/sshd_config
RUN     sed -ri 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

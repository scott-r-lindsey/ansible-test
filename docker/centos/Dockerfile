FROM centos:8

RUN yum update -y
RUN yum install openssh-server -y
COPY docker/centos/run.sh /run.sh
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g'

COPY ssh/centos /root/.ssh
RUN chown -R root:root /root/.ssh && chmod 700 /root/.ssh

CMD  ["/run.sh"]

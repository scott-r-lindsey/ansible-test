FROM debian:buster

RUN apt update
RUN apt install openssh-server -y
COPY docker/debian/run.sh /run.sh

COPY ssh/debian /root/.ssh
RUN chown -R root:root /root/.ssh && chmod 700 /root/.ssh

CMD  ["/run.sh"]

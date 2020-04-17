FROM alpine:3

RUN apk upgrade --update
RUN apk add ansible openssh

COPY ssh/ansible /root/.ssh
RUN chown -R root:root /root/.ssh && chmod 700 /root/.ssh

COPY docker/ansible/run.sh /run.sh

CMD  ["/run.sh"]

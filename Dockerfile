FROM ubuntu:latest
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
COPY ansible/ /ansible
COPY entrypoint.sh /
ENTRYPOINT ["./entrypoint.sh"]

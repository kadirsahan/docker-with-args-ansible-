FROM python:slim

# Make a directory for our application
WORKDIR /appdr

ENV filename=default
ENV slp=60
# Copy our source code
RUN pip install ansible
RUN apt-get update
RUN apt-get install openssh-client -y
RUN apt-get install vim -y

COPY hosts /etc/hosts_extra

COPY /app .

COPY .cert /root/.ssh

RUN chmod -R 777 /appdr


ENTRYPOINT ["/appdr/run.sh"]

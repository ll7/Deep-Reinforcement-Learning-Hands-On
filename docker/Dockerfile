FROM dorowu/ubuntu-desktop-lxde-vnc:bionic

USER root

RUN useradd -ms /bin/bash -p password ubuntu
RUN adduser ubuntu sudo

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN /bin/bash -c ' \
sudo apt-get update && sudo apt-get install -y wget git tar; \
sudo apt-get update && sudo apt-get install -y curl gnupg2 lsb-release; \
sudo apt-get update && sudo apt-get install -y python3.6 python3-pip; \
'

USER ubuntu

COPY requirements.txt /home/ubuntu/requirements.txt
WORKDIR /home/ubuntu/
RUN pip3 install -r requirements.txt

USER root

RUN git clone https://github.com/ll7/Deep-Reinforcement-Learning-Hands-On

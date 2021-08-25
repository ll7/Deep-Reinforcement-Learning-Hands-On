FROM dorowu/ubuntu-desktop-lxde-vnc:focal

USER root

RUN useradd -ms /bin/bash -p password ubuntu
RUN adduser ubuntu sudo

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN /bin/bash -c ' \
sudo apt-get update && sudo apt-get install -y wget git tar; \
sudo apt-get update && sudo apt-get install -y curl gnupg2 lsb-release; \
sudo apt-get update && sudo apt-get install -y python3.6 '


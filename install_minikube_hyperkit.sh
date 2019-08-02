#!/usr/bin/env bash

DRIVER_BINARY_PATH=/usr/local/bin/docker-machine-driver-hyperkit

brew cask install minikube

brew install hyperkit

curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
&& sudo install -o root -g wheel -m 4755 docker-machine-driver-hyperkit /usr/local/bin/


# Caveats: This driver requires superuser privileges to access the hypervisor. To enable, execute
sudo chown root:wheel $DRIVER_BINARY_PATH
sudo chmod u+s $DRIVER_BINARY_PATH
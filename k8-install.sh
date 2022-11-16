#!/bin/bash
sudo apt update
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
sudo systemctl start docker
sudo systemctl enable docker

#Turn off Swap space
sudo swapoff -a
sed -i '/swap / s/^\(.*\)$/#\1/g' /etc/fstab

# Install required packages and apt keys

sudo apt-get install -y apt-transport-https curl

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

sudo cat <<EOF | tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt update -y

sudo apt install -y kubelet kubeadm kubectl

sudo systemctl daemon-reload
sudo systemctl start kubelet
sudo systemctl enable kubelet

sudo systemctl daemon-reload
sudo systemctl start kubeadm
sudo systemctl enable kubeadm

sudo systemctl daemon-reload
sudo systemctl start kubectl
sudo systemctl enable kubectl

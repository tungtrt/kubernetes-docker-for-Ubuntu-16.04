

#Use these in users data section in digitalocean -> Create new droplet



#!/bin/bash
apt-get update && apt-get upgrade -y

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update -y

#Install docker, kubelet, kubeadm, kubectl , kubernetes-cni
apt-get install -y docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni

#kubeadm join --token tokenGivenbyMaster --discovery-token-unsafe-skip-ca-verification 159.89.169.97:6443

kubeadm join --token 45ccfa.d687fb57c8287643 --discovery-token-unsafe-skip-ca-verification 159.89.169.97:6443

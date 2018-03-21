#TO CONFIGURE MASTER NODE

#Store IP address of master droplet in MASTER_IP

```
export MASTER_IP=xxx.x.x.x  
apt-get update && apt-get upgrade -y


curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -


cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update -y
```
#Install docker ,kubelet , kubeadm , kubectl , kubernetes-cni
```
apt-get install -y docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
```
##kubernetes master deployed 
```
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address $MASTER_IP   
```

#Configure flannel
curl -sSL "https://github.com/coreos/flannel/blob/master/Documentation/kube-flannel.yml?raw=true" | kubectl --namespace=kube-system create -f -



#Create Dashboard
kubectl create -f https://rawgit.com/kubernetes/dashboard/master/src/deploy/kubernetes-dashboard.yaml --namespace=kube-system
kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml


#A token would be provided to join nodes to the master , Save this token somwhere to use command kubeadm join --token tokenGivenbyMaster in the node configration steps


#After this, we need to pull our docker image from the repository
#The image will be used in yaml files 
```
sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf
```








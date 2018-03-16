# kubernetes-docker

## GETTING STARTED

### Configuring the master node using digitalocean
1 Create a new droplet in digitalocean
2 Choose the ditribution (ubuntu, centOS,etc)
3 Choose the droplet size
4 Choose the nearest Datacenter Region
5 Select additional option -> Private Networking and Monitoring
6 Create SSH key and add it to the digitalocean account
7 Add the SSH key corresponding to your machine
8 Set the droplet name 
9 Click on Create

// You will get the IP address for Master droplet in the DROPLETS section


* Open the terminal
```
ssh root@MasterNodeIPAddress 
```
* Type yes 
* Follow commands  ![master.sh](https://github.com/alishaagupta/kubernetes-docker/blob/master/master.sh)





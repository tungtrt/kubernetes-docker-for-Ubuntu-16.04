# kubernetes-docker

## GETTING STARTED

### Configuring the master node using digitalocean
1. Create a new droplet in digitalocean
2. Choose the ditribution (ubuntu, centOS,etc)
3. Choose the droplet size
4. Choose the nearest Datacenter Region
5. Select additional option -> Private Networking and Monitoring
6. Create SSH key and add it to the digitalocean account
7. Add the SSH key corresponding to your machine
8. Set the droplet name 
9. Click on Create

// You will get the IP address for Master droplet in the DROPLETS section


* Open the terminal
```
ssh root@MasterNodeIPAddress 
```
* Type yes 
* Follow commands  ![master.sh](https://github.com/alishaagupta/kubernetes-docker/blob/master/master.sh)
* Pull the docker image from the private registry 


### Configuring the slave nodes using digital ocean
1. Create a new droplet in digitalocean.
2. Choose the distribution.
3. Choose the droplet size.
4. Choose the nearest Datacenter Region.
5. Select additional options: Private Networking , Monitoring and User data 
6. In User data add the yaml file ![node.sh](https://github.com/alishaagupta/kubernetes-docker/blob/master/node.sh)
7. Add the SSH key
8. Set the count of slave droplets and name
9. Click on Create

### Creating Pod File
* Follow the following commands in master node ![appPod.yml](https://github.com/alishaagupta/kubernetes-docker/blob/master/appPod.yml)
```
kubectl create -f appPod.yml
```

### Create Service File
* Follow the following commands in master node ![appService.yml](https://github.com/alishaagupta/kubernetes-docker/blob/master/appService.yml)
```kubectl create -f appService.yml
```

 ### Create Deployment File 
 * Follow the following commands in master node ![Deployment.yml](https://github.com/alishaagupta/kubernetes-docker/blob/master/Deployment.yml)
 
 ``` kubectl create -f Deployment.yml
 ```
 
 
 
 



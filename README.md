# kubernetes-docker

## GETTING STARTED

### Configuring the Master node 
1. Configure the machine as Master node.
2. Follow the commands  ![master.sh](https://github.com/alishaagupta/kubernetes-docker/blob/master/master.sh)
3. Pull the docker image from the private registry 


### Configuring the Slave nodes :
1. Configure a machine as Slave node
2. Follow the commands ![node.sh](https://github.com/alishaagupta/kubernetes-docker/blob/master/node.sh)


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
 
 ### To make use of Horizontal Pod Autoscaling
 1. Use Heapster yaml file ![Heapster.yml](https://github.com/alishaagupta/kubernetes-docker/blob/master/Heapster.yml)
 ```
 kubectl create -f Heapster.yml
 ```
2 Create HPA file ![HorizontalPodAutoscaler](https://github.com/alishaagupta/kubernetes-docker/blob/master/HorizontalPodAutoscaler.yml)
```
kubectl create -f HorizontalPodAutoscaler.yml
```

3. To check pods

```
kubectl get pods
```
4. To check hpa

``` 
kubectl get hpa

```

5. To increase the load use busybox

```
   kubectl run -i --tty load-generator --image=busybox /bin/sh
   
   while true; do wget -q -O- IPAddress:PortANumber; done
   
```


 
 
 



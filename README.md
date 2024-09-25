## Create docker

###

- Image: same AMI aws, ghost

- Dockerfile: instrauctions to create an image
## builde image

```bash 
docker build -t <image-name> .

### example
docker build -t gitdocker .
```

### view images
```
docker images
```

### view network
```
docker network ls
```

### view container running
```
docker ps
```

### Run image (tren window dung winpty)
``` bash

winpty docker run -it <image-name>  ## chạy trực tiếp
## -d sẽ keep running docker
### example
winpty docker run -it gitdocker
winpty docker run -d gitdocker sleep infinity
```

### meaning 'COPY': khi build no se thuc hien hanh dong do

### Execute command in container
```
winpty docker exec -it <container_id> <cmd>
### example
winpty docker ps
winpty docker exec -it a2cdd8c637f0 ls 
```

### stop container
```
docker stop <container_id>
### example
docker stop a2cdd8c637f0
```
### remove container
```
docker rm -f <container_id>
### example
docker rm -f a2cdd8c637f0
```

### remove image
```
docker images
docker rmi <image_id>
```

### run image with port mapping (EXPOSE = inbound port)
### EXPOSE docker file (EXPOSE 80)
```
docker run -d -p 8080:80 <image_name> <name_program>
# example 
docker run -d -p 8080:80 gitdocker httpd
```
### docker run with volume
### khai báo volume trong docker file (VOLUME /var/data 'thư mục trong container')
```
docker run -d -v . gitdocker 
# example mount file C:\Users\myPC\Desktop\devops\docker\data -> var/data
docker run -d -v C:\Users\myPC\Desktop\devops\docker\data:/var/data gitdocker sleep infinity

```

### enviroment
```
docker run -e NODE_ENV=production -e PORT=3000 my-node-app
```

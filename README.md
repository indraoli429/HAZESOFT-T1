# HAZESOFT-T1
Hosting website using Nginx web server inside Docker container

# 
Step 1: Install docker engine on your machine
- official link to install docker engine: [ Install Docker Engine](https://docs.docker.com/engine/install/ubuntu/)


Step 2: clone the given github repo
```git
git clone https://github.com/indraoli429/HAZESOFT-T1.git
```

Step 3: Nevigate to the repo

Step 4: Run the following command to build the docker image
``` dockerfile
    docker build -t nginxsite .
```
where `-t` define tagname of the image, and `.` define context path of the Dockerfile to build.

Step 5: Run the followind command to run the docker container
``` dckerfile
docker run -d -p 9000:80 nginxsite
```
where `-d` run the conainer as detached mode, `-p` maping the host and container port respectively.

Step 6: Go to your browser and type following url
```url
localhost:9000/site/
```
#! /bin/bash
docker stop java
docker rm java
docker rmi 676107150059.dkr.ecr.ap-south-1.amazonaws.com/java:latest
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 676107150059.dkr.ecr.ap-south-1.amazonaws.com
docker pull 676107150059.dkr.ecr.ap-south-1.amazonaws.com/java:latest
docker run -itd --name=java -p "8080:8080" 676107150059.dkr.ecr.ap-south-1.amazonaws.com/java:latest

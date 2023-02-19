# Farage Demo
```
sudo yum update
sudo yum install docker
sudo usermod -a -G docker ec2-user
id ec2-user
newgrp docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo yum install git

git clone https://github.com/prakhar1989/docker-curriculum.git
cd docker-curriculum/flask-app
docker build -t myapp .
docker run --publish 5000:5000 myapp



aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 957695831863.dkr.ecr.ap-south-1.amazonaws.com
docker tag myapp:latest 957695831863.dkr.ecr.ap-south-1.amazonaws.com/myapp:latest
docker push 957695831863.dkr.ecr.ap-south-1.amazonaws.com/myapp:latest



```
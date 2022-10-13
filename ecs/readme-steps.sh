# build a docker image
docker build -t demo-ecr .

# login to ECR (change for your region)
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 957695831863.dkr.ecr.ap-south-1.amazonaws.com

# tag image (change aws account number)
docker tag demo-ecr:latest 957695831863.dkr.ecr.ap-south-1.amazonaws.com/demo-ecr:latest

# push image
docker push 957695831863.dkr.ecr.ap-south-1.amazonaws.com/demo-ecr:latest

# pull image
docker pull  957695831863.dkr.ecr.ap-south-1.amazonaws.com/demo-ecr:latest

# Installing the CodeDeploy agent on EC2
```
#!bin/bash
sudo yum update -y
sudo yum install -y ruby wget
wget https://aws-codedeploy-eu-west-1.s3.eu-west-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
```
# Create EC2 with S3 access




# create a bucket and enable versioning
- ensure u have configured cli on cmd prompt
```
aws s3 mb s3://aws-devops-edureka-123123 --region ap-south-1 
aws s3api put-bucket-versioning --bucket aws-devops-edureka --versioning-configuration Status=Enabled --region ap-south-1 
```

# Create APplication in CodeDeploy with application name as : web-server

# deploy the files into S3
```
aws deploy push --application-name web-server --s3-location s3://aws-devops-edureka-123123/codedeploy-demo/app.zip --ignore-hidden-files --region ap-south-1
```


# Metadata for EC2 :

 https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-data-retrieval.html

 
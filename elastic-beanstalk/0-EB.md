# 0) Install the eb cli
- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html
```
brew update
brew install awsebcli
eb --version
```

# 1) Create a project
```
mkdir HelloWorld
cd HelloWorld
eb init
echo "Hello World" > index.html
eb create dev-env
```


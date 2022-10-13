# 0) Install the eb cli
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


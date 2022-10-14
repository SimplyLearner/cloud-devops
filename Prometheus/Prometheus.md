#Installation Steps for Prometheus
- Launch an EC2 instance with Ubuntu and run the below commands

- it is recommended to create a different user than root to run specific services. This will help to isolate Prometheus and add protection to the system.
```
sudo useradd --no-create-home prometheus
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
```

- install Prometheus
```
wget https://github.com/prometheus/prometheus/releases/download/v2.19.0/prometheus-2.19.0.linux-amd64.tar.gz
tar xvfz prometheus-2.19.0.linux-amd64.tar.gz

sudo cp prometheus-2.19.0.linux-amd64/prometheus /usr/local/bin
sudo cp prometheus-2.19.0.linux-amd64/promtool /usr/local/bin/
sudo cp -r prometheus-2.19.0.linux-amd64/consoles /etc/prometheus
sudo cp -r prometheus-2.19.0.linux-amd64/console_libraries /etc/prometheus

sudo cp prometheus-2.19.0.linux-amd64/promtool /usr/local/bin/
rm -rf prometheus-2.19.0.linux-amd64.tar.gz prometheus-2.19.0.linux-amd64
```
- Create a file called prometheus.service
```
sudo nano /etc/systemd/system/prometheus.service
```
- Add the Script as below
```
[Unit]
Description=Prometheus Service
After=network.target

[Service]
Type=simple
User=prometheus
ExecStart=/usr/local/bin/prometheus --config.file=/usr/local/bin/prometheus.yml

[Install]
WantedBy=multi-user.target
```

- check the services
```
sudo service prometheus start
sudo service prometheus status

sudo service prometheus stop
sudo service prometheus status
```




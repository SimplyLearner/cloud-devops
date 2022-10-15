#Installation Steps for Prometheus
- Launch an EC2 instance with Ubuntu and run the below commands

```
sudo su -
git clone https://github.com/SimplyLearner/cloud-devops
cd cloud-devops/Prometheus/scripts
./1-install.sh
ps aux | grep prometheus
sudo service prometheus start
sudo service prometheus status


./3-install-grafana.sh


sudo service grafana-server status


ps uax | grep prometheus

cat /etc/prometheus/prometheus.yml

```
# Install Node Exporter
- Run the script
```
sudo apt-get install vim
sudo update-alternatives --config vi

vim /etc/prometheus/prometheus.yml
  - job_name: 'node_exporter'
    scrape_interval: 5s
    static_configs:
      - targets: ['localhost:9100']
```

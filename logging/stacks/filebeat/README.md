# Filebeat

```bash
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.13-amd64.deb
sudo dpkg -i filebeat-7.17.13-amd64.deb

sudo mkdir -p /usr/share/filebeat
sudo vim /usr/share/filebeat
```

```conf
output.logstash:
  hosts: ["127.0.0.1:5044"]
```

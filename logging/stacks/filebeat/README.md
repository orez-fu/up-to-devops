# Filebeat

```bash
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.13-amd64.deb
sudo dpkg -i filebeat-7.17.13-amd64.deb

sudo vim /etc/filebeat/filebeat.yml
```

```conf

filebeat.inputs:
- type: docker
  combine_partial: true
  containers:
    path: "/var/lib/docker/containers"
    ids:
      - "*"
- type: log
  paths:
    - /var/log/syslog


output.logstash:
  hosts: ["127.0.0.1:5044"]

```

```bash
sudo systemctl restart filebeat
sudo systemctl status filebeat
```

# Refer

- https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-input-container.html

http://100.24.21.204:9200/

http://100.24.21.204:9200/_cat/indices?v

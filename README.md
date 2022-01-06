## 环境变量举例
### 添加coredns，固定ip
```bash
-e COREDNS_TYPE=static -e COREDNS_HOSTS=127.0.0.1
```
### 添加zookeeper，固定ip
```bash
-e ZOOKEEPER_TYPE=static -e ZOOKEEPER_HOSTS=127.0.0.1
```
## 使用示例
### 使用环境变量运行
```bash
docker run -p 3000:3000 -p 9090:9090 -e STORAGE_TSDB_RETENTION_TIME=2d -e STORAGE_TSDB_RETENTION_SIZE=7GB -e GLOBAL_SCRAPE_INTERVAL=30s -e GLOBAL_EVALUATION_INTERVAL=30s -e GLOBAL_SCRAPE_TIMEOUT=20s -e ZOOKEEPER_TYPE=static -e ZOOKEEPER_HOSTS=127.0.0.1 -e BOOKKEEPER_TYPE=static -e BOOKKEEPER_HOSTS=127.0.0.1 -e PULSAR_TYPE=static -e PULSAR_HOSTS=127.0.0.1 -d ttbb/integrate:grafana-prometheus
```

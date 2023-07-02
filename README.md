# Build the image

```bash
docker build -t k8s-spark-dbg - < bitnami.Dockerfile
```

# Upload the image

```bash
docker tag k8s-spark-dbg:latest docker.io/yorgaraz/k8s-spark-dbg:3.4.0-debian-11-r2
docker push docker.io/yorgaraz/k8s-spark-dbg:3.4.0-debian-11-r2
```

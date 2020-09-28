# docker-images

### How to use the image

```bash
docker run --interactive -tty \
  coindexbot/docker-images:latest-aws bash
```

### Building and publishing

```bash
docker build --tag coindexbot/docker-images:latest-aws .

docker login
docker push coindexbot/docker-images:latest-aws
```

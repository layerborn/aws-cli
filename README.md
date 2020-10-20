# aws-cli
For utilizing Amazon CLI command line to perform various operations on AWS infrastructure.

## Prerequisites
Need to start a local registry
```
docker run -d -p 5000:5000 --restart=always --name registry registry:2
```

## Basic Usage
By mounting your local credentials you can test the commands.
```
docker-compose run aws_cli_local "s3" "ls"
```

## Deploy using docker compose
Push just the image without mounting a volume.
```
docker-compose push
```

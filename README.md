# cronjobs-microservice
ThinBlock's CronJobs MicroSerivce is a docker container built on docker-crontab image. It pushes a heatbeat event on every 1s

## Installation
After installing `docker` run this command while in projects directory
```
export TB_CRONJOB_HEARTBEAT_TOPIC_ARN=heatbeat_topic_arn_here
chmod 700 run.sh cleanup.sh
./run.sh
```
to delete and stop the containers
```
./cleanup.sh
```
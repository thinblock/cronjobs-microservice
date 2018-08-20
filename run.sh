topic_arn=${TB_CRONJOB_HEARTBEAT_TOPIC_ARN:?"Please set TB_CRONJOB_HEARTBEAT_TOPIC_ARN env variable"}
docker build -t crontab-ms .
docker run -d \
  --name crontab-ms \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -v `pwd`/config.json:/opt/crontab/config.json:rw \
  -v $HOME/.aws/credentials:/root/.aws/credentials:ro \
  -v $HOME/.aws/credentials:/home/docker/.aws/credentials:ro \
  -e TB_CRONJOB_HEARTBEAT_TOPIC_ARN=${TB_CRONJOB_HEARTBEAT_TOPIC_ARN} \
  crontab-ms
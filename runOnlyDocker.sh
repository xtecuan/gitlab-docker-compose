#!/bin/bash

export GITLAB_HOST=promerica.xtesoft.com
export PORT1=443
export PORT2=80
export PORT3=2222


sudo docker run --detach \
  --hostname $GITLAB_HOST \
  --publish $PORT1:443 --publish $PORT2:80 --publish $PORT3:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  --shm-size 256m \
  gitlab/gitlab-ee:latest

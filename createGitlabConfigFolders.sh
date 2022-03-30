#!/bin/bash

export GITLAB_HOME=/srv/gitlab

if [ ! -d "$GITLAB_HOME" ]
then
	echo "Creating $GITLAB_HOME"
	mkdir -p $GITLAB_HOME
	mkdir -p $GITLAB_HOME/data
	mkdir -p $GITLAB_HOME/logs
	mkdir -p $GITLAB_HOME/config
else
	echo "$GITLAB_HOME already exists"
fi

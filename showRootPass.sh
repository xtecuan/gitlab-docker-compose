#!/bin/bash

sudo docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password

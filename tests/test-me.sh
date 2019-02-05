#!/usr/bin/env bash

docker run --rm -it  \
--volume "$PWD/":/home/robot/tests \
--volume "$PWD/results":/home/robot/results \
robod0ck/robod0ck tests/*.robot

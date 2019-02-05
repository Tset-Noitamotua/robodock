```bash
#      ______     ____    ______     ____    _____     ____     _____    __   __
#     | ___  \  / ___ \  | ___  \  / ___ \  | ___ \  / ___ \  / _____\  |  | / /
#    | |__| /  | |  | | | |__| /  | |  | | | |  | | | |  | | | |       |  |/ /
#   |      \  | |  | | |  ___ \  | |  | | | |  | | | |  | | | |       |    /
#  |  |\   \ | |__| | |  |__| | | |__| | | |__| | | |__| | | |_____  |  |\ \
# |__|  \__\ \_____/ |_______/  \_____/ |______/  \_____/  \______/ |__| \__\
```



## How to use it

cd into folder where your RF test are, 
then 

```bash
docker run --rm -it  \
--volume "$PWD/tests":/home/robot/tests \
--volume "$PWD/results":/home/robot/results \
robod0ck/robodock tests/*.robot
```

optional cli options

```bash
--env HOST_UID=$(id -u) --env HOST_GID=$(id -g) --network host
```

## Notes for myself

override docker entrypoint

```bash
docker run -it --entrypoint "command-you-want-to-run" <container-id> <command arguments and/or cli-options>
# examples
docker run -it --entrypoint "/bin/bash" <container-id>
# print the version of bash!
docker run -it --entrypoint "/bin/bash" <container-id> --version

# list installed python packages with pip
docker run --entrypoint "pip" robod0ck list
```

## CREDITS
> https://github.com/asyrjasalo/rfdocker

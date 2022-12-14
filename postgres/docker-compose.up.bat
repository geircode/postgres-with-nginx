cd %~dp0


docker swarm init

docker rm -f postgres-1

docker-compose -f docker-compose.yml down --remove-orphans

docker network create -d overlay --attachable yolo_common_network

docker-compose -f docker-compose.yml up -d --remove-orphans

REM wait for 1-2 seconds for the container to start
pause
docker exec -it postgres-1 /bin/bash
bash


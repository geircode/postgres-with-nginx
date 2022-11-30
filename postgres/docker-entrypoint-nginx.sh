#!/usr/bin/env bash

nohup nginx & disown

/bin/bash /usr/local/bin/docker-entrypoint.sh postgres
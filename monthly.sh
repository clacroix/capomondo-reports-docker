#!/bin/bash

docker run --rm -v /home/clacroix/capomondo-v3/files:/srv/files --env-file /home/clacroix/capomondo-v3/capomondo-reports-docker/.env.php.local --network capomondo-reports-docker_capomondo -it ghcr.io/clacroix/capomondo-reports-cli:latest bin/console capomondo:cron monthly --email


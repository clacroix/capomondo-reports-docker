#!/bin/bash

docker run --rm -v /home/clacroix/capomondo-v3/files:/srv/files --env-file /home/clacroix/capomondo-v3/capomondo-reports-docker/.env.php.local -it ghcr.io/clacroix/capomondo-reports-cli:latest bin/console capomondo:import
docker run --rm -v /home/clacroix/capomondo-v3/files:/srv/files --env-file /home/clacroix/capomondo-v3/capomondo-reports-docker/.env.php.local -it ghcr.io/clacroix/capomondo-reports-cli:latest bin/console capomondo:cron daily


$containerId = docker ps -q | Select-Object -First 1
docker exec -it $containerId /bin/bash

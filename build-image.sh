#!/bin/sh

docker build -t 0xsteady/minionsparaer:1.0 .
docker run -itd -e TZ=America/New_York --mount type=bind,source=/tmp/minionsparser/,target=/tmp/minionsparser --name minionsparser 0xsteady/minionsparser:1.0
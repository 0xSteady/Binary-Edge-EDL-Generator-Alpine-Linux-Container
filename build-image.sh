#!/bin/sh

docker build --no-cache -t 0xsteady/minionsparser-linux:1.0 .
docker run -itd -e TZ=America/New_York --mount type=bind,source=/tmp/minionsparser/,target=/tmp/minionsparser --name minionsparser-linux 0xsteady/minionsparser-linux:1.0
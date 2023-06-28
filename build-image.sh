#!/bin/sh
# docker compose up -d 
docker build -t 0x_steady/binaryedge_edl:1.0 .
docker run -d -e TZ=America/New_York -v /tmp/minionsparser:/tmp/minionsparser --name binaryedge_edl 0x_steady/binaryedge_edl:1.0

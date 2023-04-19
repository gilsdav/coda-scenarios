#!/bin/bash

stat /etc/rancher-logo.svg

docker exec -it hello1 /bin/bash -c "ls test.txt"

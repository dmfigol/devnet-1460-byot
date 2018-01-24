#!/bin/bash
# Prepare environment for DEVNET2449 Lab

vagrant suspend R1
docker rm -f `docker ps -a -q`

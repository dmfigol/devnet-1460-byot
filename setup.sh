#!/bin/bash
# Prepare environment for DEVNET2449 Lab

vagrant up R1
docker run -it --rm -p 58888:58888 -v $(pwd)/notebooks:/home/docker/ dmfigol/jupyter-netdevops-py3

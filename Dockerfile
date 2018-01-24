FROM alpine:latest
LABEL maintainer "Dmitry Figol <contact@dmfigol.me>"

RUN apk add --update python3 python3-dev gcc git ca-certificates libffi-dev musl-dev build-base openssl-dev libxml2-dev libxslt-dev openssh-client \
    && pip3 install --upgrade pip \
    && pip3 install ansible requests jupyter xlrd lxml ncclient netaddr xmltodict textfsm netmiko ydk-models-cisco-ios-xe ydk-models-ietf netdev pyang

EXPOSE 58888

CMD ["/bin/sh", "-c", "jupyter notebook --ip=0.0.0.0 --port=58888 --allow-root --no-browser --NotebookApp.token=''"]

WORKDIR /home/docker

# Run:
# docker run -it --rm -p 58888:58888 -v $(pwd)/notebooks:/home/docker/ dmfigol/jupyter-netdevops-py3

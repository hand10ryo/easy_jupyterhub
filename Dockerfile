
ARG BASE_CONTAINER=jupyterhub/jupyterhub
FROM $BASE_CONTAINER

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip npm nodejs libnode64 vim git &&\
    npm install -g configurable-http-proxy &&\
    git clone https://github.com/jupyterhub/nativeauthenticator.git native_authenticator/ &&\
    pip3 install -e native_authenticator

COPY hook.sh /root/
COPY jupyterhub_config.py /root/


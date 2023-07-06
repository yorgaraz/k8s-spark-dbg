FROM bitnami/spark:3.4.1-debian-11-r0

USER root

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    vim \
    apt-transport-https \
    gnupg2 \
    net-tools \
    software-properties-common

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && apt-get install -y kubectl

user 1001

ENTRYPOINT [ "/opt/bitnami/scripts/spark/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/spark/run.sh" ]

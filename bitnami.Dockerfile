FROM bitnami/spark:3.4.0-debian-11-r2

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

user 1001

ENTRYPOINT [ "/opt/bitnami/scripts/spark/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/spark/run.sh" ]

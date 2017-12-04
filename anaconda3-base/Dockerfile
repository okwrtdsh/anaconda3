FROM continuumio/anaconda3:latest
# 4.3.1

USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq \
 && apt-get upgrade -y

ENV NOTEBOOK_DIR=/src/notebooks
ENV NOTEBOOK_IP=0.0.0.0
ENV NOTEBOOK_PORT=8888

RUN conda install jupyter Pillow -y --quiet && \
    mkdir -p ${NOTEBOOK_DIR}
CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


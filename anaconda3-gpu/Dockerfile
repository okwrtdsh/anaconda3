FROM nvidia/cuda:8.0-cudnn5-devel

ENV DEBIAN_FRONTEND noninteractive


# continuumio/anaconda3
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

RUN apt-get install -y curl grep sed dpkg && \
    TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
    curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
    dpkg -i tini.deb && \
    rm tini.deb && \
    apt-get clean

ENV PATH /opt/conda/bin:$PATH
# end continuumio/anaconda3


ENV NOTEBOOK_DIR=/src/notebooks \
    NOTEBOOK_IP=0.0.0.0 \
    NOTEBOOK_PORT=8888

RUN conda install -y --quiet \
    jupyter \
    Pillow \
 && conda config --add channels conda-forge

CMD jupyter notebook \
        --notebook-dir=${NOTEBOOK_DIR} \
        --ip=${NOTEBOOK_IP} \
        --port=${NOTEBOOK_PORT} \
        --NotebookApp.token='' \
        --no-browser \
        --allow-root


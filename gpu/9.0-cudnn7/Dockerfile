FROM nvidia/cuda:9.0-cudnn7-devel

USER root
ENV DEBIAN_FRONTEND=noninteractive \
	LANG=C.UTF-8 \
	LC_ALL=C.UTF-8

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get install --no-install-recommends -y \
	# opencv3
	libgtk2.0-0 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY ./install.sh /install.sh
RUN /install.sh \
 && rm /install.sh

ENV PATH=/opt/conda/bin:$PATH \
	NOTEBOOK_DIR=/src/notebooks \
	NOTEBOOK_IP=0.0.0.0 \
	NOTEBOOK_PORT=8888

RUN conda install -y --quiet \
	jupyter \
	Pillow \
 && conda config --add channels conda-forge \
	# opencv3 install
 && conda install -c https://conda.anaconda.org/menpo opencv3

CMD jupyter notebook \
	--notebook-dir=${NOTEBOOK_DIR} \
	--ip=${NOTEBOOK_IP} \
	--port=${NOTEBOOK_PORT} \
	--NotebookApp.token='' \
	--no-browser \
	--allow-root


FROM nvidia/cuda:9.2-cudnn7-devel

USER root
ENV DEBIAN_FRONTEND=noninteractive \
	LANG=C.UTF-8 \
	LC_ALL=C.UTF-8 \
	PATH=/opt/conda/bin:$PATH \
	NOTEBOOK_DIR=/src/notebooks \
	NOTEBOOK_IP=0.0.0.0 \
	NOTEBOOK_PORT=8888

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get install --no-install-recommends -y \
	curl grep sed dpkg wget bzip2 ca-certificates \
	libglib2.0-0 libxext6 libsm6 libxrender1 \
	git mercurial subversion \
	# opencv3
	libgtk2.0-0 \
# anaconda install
 && echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh \
 #&& ANACONDA_INSTALL_SCRIPT=`curl https://repo.continuum.io/archive/ | grep '>Anaconda3.*-Linux-x86_64.sh<' | sed -e 's/.*>\(.*.sh\)<\/.*/\1/g' | sort -r | head -1` \
 && ANACONDA_INSTALL_SCRIPT='Anaconda3-5.2.0-Linux-x86_64.sh' \
 && wget --quiet https://repo.continuum.io/archive/$ANACONDA_INSTALL_SCRIPT -O ~/anaconda.sh \
 && /bin/bash ~/anaconda.sh -b -p /opt/conda \
 && rm ~/anaconda.sh \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN conda install -y --quiet \
	jupyter \
	Pillow \
 && conda config --add channels conda-forge \
	# opencv3 install
 && conda install -c menpo opencv3 \
 && conda clean -tipsy

# tini install
ENV TINI_VERSION=v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT [ "/usr/bin/tini", "--" ]

CMD jupyter notebook \
	--notebook-dir=${NOTEBOOK_DIR} \
	--ip=${NOTEBOOK_IP} \
	--port=${NOTEBOOK_PORT} \
	--NotebookApp.token='' \
	--no-browser \
	--allow-root


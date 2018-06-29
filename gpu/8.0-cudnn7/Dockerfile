FROM nvidia/cuda:8.0-cudnn7-devel

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
 && ANACONDA_INSTALL_SCRIPT=`curl https://repo.continuum.io/archive/ | grep '>Anaconda3.*-Linux-x86_64.sh<' | sed -e 's/.*>\(.*.sh\)<\/.*/\1/g' | sort -r | head -1` \
 && wget --quiet https://repo.continuum.io/archive/$ANACONDA_INSTALL_SCRIPT -O ~/anaconda.sh \
 && /bin/bash ~/anaconda.sh -b -p /opt/conda \
 && rm ~/anaconda.sh \
# tini install
 && TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` \
 && curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb \
 && dpkg -i tini.deb \
 && rm tini.deb \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

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


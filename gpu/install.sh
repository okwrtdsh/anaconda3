#!/usr/bin/env bash
set -e

apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	curl grep sed dpkg wget bzip2 ca-certificates \
	libglib2.0-0 libxext6 libsm6 libxrender1 \
	git mercurial subversion

echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh \
 && ANACONDA_INSTALL_SCRIPT=`curl https://repo.continuum.io/archive/ | grep '>Anaconda3.*-Linux-x86_64.sh<' |sed -e 's/.*\>\(.*\.sh\)\<.*/\1/g' | sort -r | head -1` \
 && wget --quiet https://repo.continuum.io/archive/$ANACONDA_INSTALL_SCRIPT -O ~/anaconda.sh \
 && /bin/bash ~/anaconda.sh -b -p /opt/conda \
 && rm ~/anaconda.sh

TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` \
 && curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb \
 && dpkg -i tini.deb \
 && rm tini.deb

apt-get clean \
 && rm -rf /var/lib/apt/lists/*


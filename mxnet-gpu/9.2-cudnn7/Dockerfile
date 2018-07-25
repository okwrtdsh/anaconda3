FROM okwrtdsh/anaconda3:9.2-cudnn7

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# mxnet install
RUN pip --no-cache-dir install \
	mxnet-cu92 \
	mxnet-cu92mkl \
	graphviz \
	pydot_ng \
	msgpack


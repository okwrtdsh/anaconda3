FROM okwrtdsh/anaconda3:9.1-cudnn7

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# mxnet install
RUN pip --no-cache-dir install \
	mxnet-cu91 \
	mxnet-cu91mkl \
	graphviz \
	pydot_ng \
	msgpack


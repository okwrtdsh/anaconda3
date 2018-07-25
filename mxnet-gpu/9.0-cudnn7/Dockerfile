FROM okwrtdsh/anaconda3:9.0-cudnn7

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# mxnet install
RUN pip --no-cache-dir install \
	mxnet-cu90 \
	mxnet-cu90mkl \
	graphviz \
	pydot_ng \
	msgpack


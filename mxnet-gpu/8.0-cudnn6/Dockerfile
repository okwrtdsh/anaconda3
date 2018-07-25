FROM okwrtdsh/anaconda3:8.0-cudnn6

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# mxnet install
RUN pip --no-cache-dir install \
	mxnet-cu80 \
	mxnet-cu80mkl \
	graphviz \
	pydot_ng \
	msgpack


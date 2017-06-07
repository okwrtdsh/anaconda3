FROM okwrtdsh/anaconda3:base

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # theano
    g++ \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# theano install
RUN conda install -y --quiet theano \
 && pip --no-cache-dir install pydot_ng


FROM okwrtdsh/anaconda3:theano

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # keras
    graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# keras (theano) install
RUN conda install -y --quiet keras \
 && pip --no-cache-dir install pydot_ng \
 && mkdir -p ~/.keras \
 && echo '{\n"image_dim_ordering": "th",\n"epsilon": 1e-07,\n"floatx": "float32",\n"backend": "theano"\n}' > ~/.keras/keras.json


FROM okwrtdsh/anaconda3:opencv3

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # keras.utils.vis_utils
    graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# keras (tensorflow) install
RUN conda install -y --quiet \
    tensorflow \
    'keras=2.0.6' \
 && pip --no-cache-dir install \
    # keras.utils.vis_utils
    pydot_ng \
    # quiver(keras)
    quiver_engine \
    git+git://github.com/keplr-io/quiver.git


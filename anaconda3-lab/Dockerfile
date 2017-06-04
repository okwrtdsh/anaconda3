FROM okwrtdsh/anaconda3:opencv3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # keras.utils.vis_utils
    graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# keras (tensorflow) install
RUN conda config --add channels conda-forge \
 && conda install -y --quiet \
    tensorflow \
    keras \
 && pip --no-cache-dir install \
    # keras.utils.vis_utils
    pydot_ng \
    # quiver(keras)
    quiver_engine \
    git+git://github.com/keplr-io/quiver.git

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser --NotebookApp.token=''


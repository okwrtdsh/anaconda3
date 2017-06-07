FROM okwrtdsh/anaconda3:tensorflow

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # keras
    graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# keras (tensorflow) install
RUN conda install -y --quiet keras \
 && pip --no-cache-dir install pydot_ng


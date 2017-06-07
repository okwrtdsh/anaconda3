FROM okwrtdsh/anaconda3:tensorflow

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # keras
    graphviz

# keras (tensorflow) install
RUN conda install keras -y --quiet \
 && pip --no-cache-dir install pydot_ng

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


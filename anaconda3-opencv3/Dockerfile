FROM okwrtdsh/anaconda3:base

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # opencv3
    libgtk2.0-0

ENV PATH $PATH:/root/anaconda3/bin
# opencv3 install
RUN conda install -c https://conda.anaconda.org/menpo opencv3

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


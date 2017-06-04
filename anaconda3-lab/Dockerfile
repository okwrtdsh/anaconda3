FROM okwrtdsh/anaconda3:opencv3

ENV DEBIAN_FRONTEND noninteractive

# keras (tensorflow) install
RUN conda config --add channels conda-forge \
 && conda install -y --quiet \
    tensorflow \
    keras

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


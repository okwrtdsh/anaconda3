FROM okwrtdsh/anaconda3:base

ENV DEBIAN_FRONTEND noninteractive

# theano install
RUN conda config --add channels conda-forge \
 && conda install theano -y --quiet

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


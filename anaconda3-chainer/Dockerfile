FROM okwrtdsh/anaconda3:base

ENV DEBIAN_FRONTEND noninteractive

# chainer install
RUN pip --no-cache-dir install chainer

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


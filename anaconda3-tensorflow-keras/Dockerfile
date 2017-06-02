FROM okwrtdsh/anaconda3:tensorflow

ENV DEBIAN_FRONTEND noninteractive

# keras (tensorflow) install
RUN conda install keras -y --quiet

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


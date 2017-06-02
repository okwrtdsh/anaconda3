FROM okwrtdsh/anaconda3:theano

ENV DEBIAN_FRONTEND noninteractive

# keras (theano) install
RUN conda install keras -y --quiet \
 && echo '{
    "image_dim_ordering": "th",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "theano"
}' > ~/.keras/keras.json

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


FROM okwrtdsh/anaconda3:theano

ENV DEBIAN_FRONTEND noninteractive

# keras (theano) install
RUN conda install keras -y --quiet \
 && mkdir -p ~/.keras \
 && echo '{\n"image_dim_ordering": "th",\n"epsilon": 1e-07,\n"floatx": "float32",\n"backend": "theano"\n}' > ~/.keras/keras.json

CMD jupyter notebook --notebook-dir=${NOTEBOOK_DIR} --ip=${NOTEBOOK_IP} --port=${NOTEBOOK_PORT} --no-browser


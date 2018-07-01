FROM okwrtdsh/anaconda3:tf-8.0-cudnn6

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	# keras.utils.vis_utils
	graphviz \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# keras (tensorflow) install
RUN conda install -y --quiet \
	'keras=2.1.6' \
 && pip --no-cache-dir install \
	# keras.utils.vis_utils
	pydot_ng


FROM okwrtdsh/anaconda3:9.2-cudnn7

# pytorch install
RUN conda install -y --quiet \
	numpy pyyaml mkl mkl-include setuptools cmake cffi typing \
 && conda install -y --quiet -c mingfeima \
	mkldnn \
 && conda install -y --quiet -c pytorch \
	torchvision \
	magma-cuda91 \
	cuda91 \
	'pytorch=1.0.0'


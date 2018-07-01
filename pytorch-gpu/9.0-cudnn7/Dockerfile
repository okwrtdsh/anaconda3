FROM okwrtdsh/anaconda3:9.0-cudnn7

# pytorch install
RUN conda install -y --quiet \
	numpy pyyaml mkl mkl-include setuptools cmake cffi typing \
 && conda install -y --quiet -c mingfeima \
	mkldnn \
 && conda install -y --quiet -c pytorch \
	torchvision \
	magma-cuda90 \
	cuda90 \
	'pytorch=0.4.0'


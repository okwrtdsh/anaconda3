FROM okwrtdsh/anaconda3:8.0-cudnn6

# pytorch install
RUN conda install -y --quiet \
	numpy pyyaml mkl mkl-include setuptools cmake cffi typing \
 && conda install -y --quiet -c mingfeima \
	mkldnn \
 && conda install -y --quiet -c pytorch \
	torchvision \
	magma-cuda80 \
	cuda80 \
	'pytorch=0.4.0'


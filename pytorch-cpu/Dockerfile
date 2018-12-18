FROM okwrtdsh/anaconda3:cpu

# pytorch install
RUN conda install -y --quiet \
	numpy pyyaml mkl mkl-include setuptools cmake cffi typing \
 && conda install -y --quiet -c mingfeima \
	mkldnn \
 && conda install -y --quiet -c pytorch \
	torchvision-cpu \
	'pytorch-cpu=1.0.0'


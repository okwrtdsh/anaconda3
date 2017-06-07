FROM okwrtdsh/anaconda3:base

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
    # opencv3
    libgtk2.0-0 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# opencv3 install
RUN conda install -c https://conda.anaconda.org/menpo opencv3


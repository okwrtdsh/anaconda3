FROM okwrtdsh/anaconda3:cpu

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	openjdk-8-jdk \
	zip \
	unzip \
 && curl -s https://get.sdkman.io | bash \
 && /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; sdk install kotlin" \
 && git clone https://github.com/ligee/kotlin-jupyter.git \
 && cd kotlin-jupyter \
 && ./gradlew install \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

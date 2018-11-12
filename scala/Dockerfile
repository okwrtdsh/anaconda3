FROM okwrtdsh/anaconda3:cpu

ENV SCALA_VERSION=2.12.7 \
	ALMOND_VERSION=0.1.10

RUN apt-get update -qq \
 && apt-get install --no-install-recommends -y \
	openjdk-8-jdk \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && curl -L -o /usr/bin/coursier https://git.io/coursier \
 && chmod +x /usr/bin/coursier \
 && coursier bootstrap -i user -I user:sh.almond:scala-kernel-api_$SCALA_VERSION:$ALMOND_VERSION \
	sh.almond:scala-kernel_$SCALA_VERSION:$ALMOND_VERSION -o /usr/bin/almond \
 && chmod +x /usr/bin/almond \
 && almond --install

RUN conda install -y --quiet -c anaconda-cluster scala

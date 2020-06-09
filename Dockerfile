From node:12.18.0
RUN apt-get update && apt-get install openjdk-8-jdk -y openjdk-8-jre maven -y
RUN wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz \
    && tar xf Python-3.7.3.tar.xz \
    && cd ./Python-3.7.3 \
    && ./configure \
    && make \
    && make install \
    && update-alternatives --install /usr/bin/python python /usr/local/bin/python3.7 10 \
    && pip3 install --upgrade pip \
    && pip install awscli

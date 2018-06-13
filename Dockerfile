FROM uhopper/hadoop:2.7.2

RUN curl -O https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-2.1.1/apache-hive-2.1.1-bin.tar.gz && \
    tar xzf apache-hive-2.1.1-bin.tar.gz && \
    mv apache-hive-2.1.1-bin /usr/local/hive && \
    rm apache-hive-2.1.1-bin.tar.gz
ADD start.sh /start.sh

CMD bash /start.sh
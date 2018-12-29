
FROM  xxlabaza/alpine
LABEL maintainer="Artem Labazin <xxlabaza@gmail.com>"

# Container environments
ENV JAVA_VERSION=12 \
    JAVA_LINK=https://download.java.net/java/early_access/alpine/25/binaries/openjdk-12-ea+25_linux-x64-musl_bin.tar.gz \
    JAVA_HOME=/opt/java \
    PATH=${PATH}:/opt/java/bin \
    LANG=C.UTF-8

# Prepare image
RUN mkdir -p /opt && \
    wget ${JAVA_LINK} -O /tmp/java.tar.gz && \
    tar -C /opt -zxf /tmp/java.tar.gz && \
    ln -s /opt/jdk-${JAVA_VERSION} /opt/java

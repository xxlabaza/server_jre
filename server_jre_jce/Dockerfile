
FROM        xxlabaza/alpine
MAINTAINER  Artem Labazin <xxlabaza@gmail.com>

# Container environments
ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=112 \
    JAVA_VERSION_BUILD=15 \
    JAVA_PACKAGE=server-jre \
    JAVA_HOME=/opt/jdk \
    PATH=${PATH}:/opt/jdk/bin

# Prepare image
RUN mkdir /opt \
    #
    # Install cURL
    #
    && apk add --virtual=build-dependencies --no-cache --no-progress \
        curl \
        ca-certificates \
    && curl -Ls https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk > /tmp/glibc-2.21-r2.apk \
    && apk add --allow-untrusted /tmp/glibc-2.21-r2.apk \
    #
    # Download and unarchive Java
    #
    && curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz \
       | tar -xzf - -C /opt \
    #
    # Create symlink
    #
    && ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk \
    #
    # Download and unarchive JCE (Java Cryptography Extension)
    #
    && mkdir -p /opt/jdk/jre/lib/security \
    && curl -s -k -L -C - -b "oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip \
       > /tmp/jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && unzip -d /tmp/ /tmp/jce_policy-${JAVA_VERSION_MAJOR}.zip \
    && yes | cp -v /tmp/UnlimitedJCEPolicyJDK${JAVA_VERSION_MAJOR}/*.jar /opt/jdk/jre/lib/security/ \
    #
    # Remove unnecessary dependencies
    #
    && apk del build-dependencies \
    #
    # Delete unuseful files
    #
    && rm -rf /opt/jdk/*src.zip \
              /opt/jdk/lib/missioncontrol \
              /opt/jdk/lib/visualvm \
              /opt/jdk/lib/*javafx* \
              /opt/jdk/jre/lib/plugin.jar \
              /opt/jdk/jre/lib/ext/jfxrt.jar \
              /opt/jdk/jre/bin/javaws \
              /opt/jdk/jre/lib/javaws.jar \
              /opt/jdk/jre/lib/desktop \
              /opt/jdk/jre/plugin \
              /opt/jdk/jre/lib/deploy* \
              /opt/jdk/jre/lib/*javafx* \
              /opt/jdk/jre/lib/*jfx* \
              /opt/jdk/jre/lib/amd64/libdecora_sse.so \
              /opt/jdk/jre/lib/amd64/libprism_*.so \
              /opt/jdk/jre/lib/amd64/libfxplugins.so \
              /opt/jdk/jre/lib/amd64/libglass.so \
              /opt/jdk/jre/lib/amd64/libgstreamer-lite.so \
              /opt/jdk/jre/lib/amd64/libjavafx*.so \
              /opt/jdk/jre/lib/amd64/libjfx*.so \
    #
    # Clear temporaries
    #
    && rm -fr /tmp/*

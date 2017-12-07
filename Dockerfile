FROM centos:7
MAINTAINER bluebu <bluebuwang@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  yum update -y && \
  yum install -y epel-release wget

RUN \
  mkdir ~/src && \
  cd ~/src && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.rpm && \
  rpm -ivh jdk-8u151-linux-x64.rpm && \
  java -version && \
  rm -rf ~/src && \
  echo "JAVA_HOME=/usr/java/jdk1.8.0_151" >> /etc/environment


#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

# ADD rootfs /

#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
# EXPOSE 8118

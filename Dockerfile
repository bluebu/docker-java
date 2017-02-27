FROM centos:7
MAINTAINER bluebu <bluebuwang@gmail.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  yum update --assumeno && \
  yum install -y epel-release wget

RUN \
  mkdir ~/src && \
  cd ~/src && \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.rpm && \
  rpm -ivh jdk-8u121-linux-x64.rpm && \
  java -version


#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

# ADD rootfs /

#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
# EXPOSE 8118
FROM tianon/debian:wheezy
MAINTAINER Davy Leggieri <bydavy@gmail.com>

# Enable i386 multiarch
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get upgrade -y

# Install 32 bits libs
RUN apt-get install -y ia32-libs

# Install spksrc's required packages
RUN apt-get install -y build-essential debootstrap python-pip automake libgmp3-dev libltdl-dev libunistring-dev libffi-dev ncurses-dev imagemagick libssl-dev pkg-config zlib1g-dev gettext git curl subversion check libboost1.49-dev intltool gperf flex bison xmlto php5 expect libgc-dev mercurial cython
RUN pip install -U pip

# Volume pointing to spksrc sources
VOLUME /root/spksrc

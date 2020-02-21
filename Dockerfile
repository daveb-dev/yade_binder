# Dockerfile
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean && apt-get update && \
    apt-get install -y \
    build-essential \
    cmake \
    coinor-clp \
    coinor-libclp-dev \
    coinor-libclp1 \
    coinor-libosi1v5 \
    debhelper \
    devscripts \
    dpkg-dev \
    dvipng \
    fakeroot \
    freeglut3-dev \
    g++ \
    git \
    git-buildpackage \
    gnuplot \
    gtk2-engines-pixbuf \
    help2man \
    python3-ipython \
    libboost-all-dev \
    libbz2-dev \
    libcgal-dev \
    libeigen3-dev \
    libgts-dev \
    libjs-jquery \
    libloki-dev \
    libmetis-dev \
    libopenblas-dev \
    libqglviewer-dev-qt5 \
    libqglviewer-headers \
    libsqlite3-dev \
    libsuitesparse-dev \
    libvtk6-dev \
    libxi-dev \
    libxmu-dev \
    lmodern \
    qt5-default \
    pyqt5-dev-tools \
    pyqt5-dev-tools \
    python3-all-dev \
    python3-bibtexparser \
    python3-dev \
    python3-future \
    python3-git \
    python-gts \
    python3-pil \
    python3-matplotlib \
    python3-minieigen \
    python3-numpy \
    python3-pygraphviz \
    python3-pyqt5 \
    python3-pyqt5.qtsvg \
    python3-pyqt5.qtwebkit \
    python3-sphinx \
    python3-qtconsole \
    python3-tk \
    python3-xlib \
    python3-mpi4py \
    python3-pip \
    texlive-fonts-recommended \
    texlive-generic-extra \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-pictures \
    texlive-xetex \
    tipa \
    xvfb \
    zlib1g-dev
RUN  wget -O - http://www.yade-dem.org/packages/yadedev_pub.gpg | sudo apt-key add - && \
    apt-get update && \
    apt-get install -y yade 

RUN apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/archives/*deb


RUN pip3 install --no-cache --upgrade notebook




ARG GTKSHARPVERSION=2.12.45
ARG GKTSHARPTARBALLEXT=.tar.gz

FROM mono:5
ARG GTKSHARPVERSION
ARG GKTSHARPTARBALLEXT

RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --yes --no-install-recommends apt-utils\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*
# RUN     export DEBIAN_FRONTEND=noninteractive\
#     &&  apt-get update\
#     &&  apt-get upgrade --no-install-recommends --yes\
#     &&  apt-get autoremove --yes\
#     &&  rm -rf /var/lib/apt/lists/*
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --no-install-recommends --yes\
            build-essential\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --no-install-recommends --yes\
            libgtk2.0-dev libpango1.0-dev libglade2-dev\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*

ADD https://download.mono-project.com/sources/gtk-sharp212/gtk-sharp-${GTKSHARPVERSION}${GKTSHARPTARBALLEXT} /tmp/
RUN     tar -xf /tmp/gtk-sharp-${GTKSHARPVERSION}${GKTSHARPTARBALLEXT} -C /usr/src

WORKDIR /usr/src/gtk-sharp-${GTKSHARPVERSION}
RUN     sh ./configure --prefix=/opt/gtk-sharp-2.12

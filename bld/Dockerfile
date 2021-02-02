ARG GTKSHARPVERSION=2.12.45
ARG GKTSHARPTARBALLEXT=.tar.gz

FROM mono
ARG GTKSHARPVERSION
ARG GKTSHARPTARBALLEXT

RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --yes --no-install-recommends apt-utils\
    &&  apt-get upgrade --no-install-recommends --yes\
            build-essential\
            libgtk2.0-dev libpango1.0-dev libglade2-dev\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*

ADD https://download.mono-project.com/sources/gtk-sharp212/gtk-sharp-${GTKSHARPVERSION}${GKTSHARPTARBALLEXT} /tmp/
RUN     tar -xf /tmp/gtk-sharp-${GTKSHARPVERSION}${GKTSHARPTARBALLEXT} -C /usr/src

WORKDIR /usr/src/gtk-sharp-${GTKSHARPVERSION}
RUN     sh ./configure

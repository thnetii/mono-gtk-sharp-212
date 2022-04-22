FROM mono:5

RUN mv -v /etc/apt/sources.list.d/mono-official-stable.list /opt/mono-official-stable.list
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --yes --no-install-recommends apt-utils\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --yes --no-install-recommends apt-transport-https\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*
RUN mv -v /opt/mono-official-stable.list /etc/apt/sources.list.d/mono-official-stable.list
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --no-install-recommends --yes\
            build-essential\
            libtool autoconf automake\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --no-install-recommends --yes\
            libgtk2.0-dev libpango1.0-dev libglade2-dev\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*
RUN     export DEBIAN_FRONTEND=noninteractive\
    &&  apt-get update\
    &&  apt-get install --no-install-recommends --yes\
            monodoc-base\
    &&  apt-get autoremove --yes\
    &&  rm -rf /var/lib/apt/lists/*

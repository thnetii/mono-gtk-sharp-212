FROM mono:5

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

#!/bin/bash
# run it line by line
sudo apt update && sudo apt upgrade
sudo apt install build-essential cmake doxygen g++-9 gdb git git-lfs=2.9.2-1 python3-pip python3-venv libboost-dev libtinfo-dev libgtk-3-dev subversion tightvncserver \
valgrind unzip device-tree-compiler e2fsprogs gtkwave  software-properties-common python3.8 libpython2.7 \
openssh-server net-tools libncursesw5 libsecret-1-0 appmenu-gtk2-module appmenu-gtk-module-common libcanberra-gtk-module libcanberra-gtk3-module -y --allow-downgrades
# python
python3 -m pip install --upgrade-strategy=eager --upgrade pip scons pytest pytest-cov pytest-html pytest-timeout pytest-xdist \
execnet autopep8 flake8 yapf sphinx sphinx-book-theme breathe pyzmq click setuptools build lief gcovr

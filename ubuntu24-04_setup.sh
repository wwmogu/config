#!/bin/bash

# run it line by line
sudo apt update && sudo apt upgrade

sudo apt install build-essential vim tmux \
cmake doxygen g++-9 gdb git python3-pip python3-venv libboost-dev libtinfo-dev libgtk-3-dev subversion \
unzip -y

# python
python3 -m pip install --upgrade-strategy=eager --upgrade pip scons pytest pytest-cov pytest-html pytest-timeout pytest-xdist \
execnet autopep8 flake8 yapf sphinx sphinx-book-theme breathe pyzmq click setuptools build lief gcovr

#!/bin/sh

#
# Packages to install with Cygwin pip
#
# python3-pip (or python3.x-pip)  must be installed
#

pip3 install flake8
# pip3 install pylint           # -> apt-cyg install pylint
pip3 install python-dateutil
pip3 install pytz
# pip3 install requests         # -> apt-cyg install python36-requests
pip3 install pip-review


pip2 install flake8
# pip2 install pylint           # -> apt-cyg install pylint
pip2 install python-dateutil
# pip2 install pytz             # -> apt-cyg install python27-pytz
# pip2 install requests         # -> apt-cyg install python27-requests
pip2 install pathlib
pip2 install pip-review

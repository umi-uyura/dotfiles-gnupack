#!/bin/sh

# install pip
easy_install-2.7 pip

# use pip
pip install flake8
pip install pylint
pip install mock              # 3.3 unittest.mock backport
pip install geopy
pip install numpy
pip install pandas
pip install docopt
pip install python-dateutil
pip install pytz
pip install enum34            # 3.4 Enum backport
pip install jsbeautifier
pip install requests

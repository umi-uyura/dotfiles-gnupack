#!/bin/sh

apt-cyg install curl
apt-cyg install curl-devel
apt-cyg install bind-utils    # include dig, nslookup
apt-cyg install lv
apt-cyg install tig
apt-cyg install jq
apt-cyg install pwgen

#
# Error countermeasure
#

# emacs (pretest-2018.06.10)
# error while loading shared libraries: cyggif-7.dll: cannot open shared object file: No such file or directory
apt-cyg install libgif7

# emacs (pretest-2018.06.10)
# error while loading shared libraries: ?: cannot open shared object file: No such file or directory
apt-cyg install libstdc++6

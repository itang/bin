#!/bin/bash

VERSION=0.2.0-p0

(
cd /tmp

# crystal
rm crystal-linux64-${VERSION}.tar.gz

wget http://crystal-lang.s3.amazonaws.com/crystal-linux64-${VERSION}.tar.gz &&
rm rf ~/dev-env/crystal &&
tar zxvf crystal-linux64-${VERSION}.tar.gz -C ~/dev-env/
 

# libunwind7
wget http://mirrors.kernel.org/ubuntu/pool/universe/libu/libunwind/libunwind7-dev_0.99-0.3ubuntu1_amd64.deb
sudo dpkg -i libunwind7_0.99-0.3ubuntu1_amd64.deb

# llvm-clang
wget http://llvm.org/releases/3.5.0/clang+llvm-3.5.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz &&
xz -d clang+llvm-3.5.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz &&
tar -xvf clang+llvm-3.5.0-x86_64-linux-gnu-ubuntu-14.04.tar -C ~/dev-env/ 
ln -s ~/dev-env/clang+llvm-3.5.0-x86_64-linux-gnu ~/dev-env/clang 
# add $LLVM_HOME/bin to $PATH

# http://www.hboehm.info/gc/gc_source/gc-7.4.2.tar.gz
git clone git://github.com/ivmai/libatomic_ops.git
git clone git://github.com/ivmai/bdwgc.git
ln -s  libatomic_ops bdwgc/libatomic_ops
cd bdwgc
autoreconf -vif
automake --add-missing
./configure
make && make install

)

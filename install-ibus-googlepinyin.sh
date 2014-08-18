sudo apt-get install mercurial

# 安装依赖
sudo apt-get install cmake build-essential opencc mercurial ibus

# 安装 libgooglepinyin 库
(
cd /tmp
hg clone http://code.google.com/p/libgooglepinyin/
cd libgooglepinyin

mkdir build; cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr

make
sudo make install
)

# ibus-googlepinyin

(
cd /tmp

hg clone http://code.google.com/p/libgooglepinyin.ibus-wrapper/ ibus-googlepinyin

cd ibus-googlepinyin

mkdir build; cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr

make
sudo make install
)

echo "restart ibus"
pkill -f ibus-daemon ; ibus-daemon -d -x

echo "ibus setup"
ibus-setup

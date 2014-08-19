VERSION=2.8.13
(
cd /tmp
rm redis-${VERSION}.tar.gz
wget http://download.redis.io/releases/redis-${VERSION}.tar.gz && 
rm -rf ~/dev-env/redis && 
tar xzf redis-2.8.13.tar.gz -C ~/dev-env 

cd ~/dev-env
ln -s redis-2.8.13 redis

cd redis

make

# src/redis-server
src/redis-cli --version
)
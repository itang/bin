VERSION="0.8.2.1"

DOWNLOAD_URL=http://mirrors.cnnic.cn/apache/kafka/$VERSION/kafka_2.11-$VERSION.tgz

echo $DOWNLOAD_URL

cd /tmp
rm kafka_2.11-$VERSION.tgz

wget $DOWNLOAD_URL && tar zxvf kafka_2.11-$VERSION.tgz -C ~/dev-env/ && rm -rf ~/dev-env/kafka

cd ~/dev-env
ln -s kafka_2.11-$VERSION kafka


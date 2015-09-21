VERSION=2.11.1-01

cd /tmp

rm nexus-latest-bundle.zip

wget http://www.haoshuju.net:7000/downloads/nexus-latest-bundle.zip
unzip nexus-latest-bundle.zip -d ~/dev-env

cd ~/dev-env
ln -s nexus-$VERSION nexus
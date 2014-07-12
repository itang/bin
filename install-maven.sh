(cd ~/Downloads
rm apache-maven-3.2.2-bin.tar.gz
wget http://apache.fayea.com/apache-mirror/maven/maven-3/3.2.2/binaries/apache-maven-3.2.2-bin.tar.gz
tar zxvf apache-maven-3.2.2-bin.tar.gz -C ~/dev-env

cd ~/dev-env
ln -s apache-maven-3.2.2 maven
)

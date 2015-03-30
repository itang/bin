VERSION=3.3.1

(cd ~/tmp
rm apache-maven-${VERSION}-bin.tar.gz
wget http://mirrors.cnnic.cn/apache/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz
tar zxvf apache-maven-${VERSION}-bin.tar.gz -C ~/dev-env

cd ~/dev-env
rm -rf maven
ln -s apache-maven-${VERSION} maven
)

mvn -version 

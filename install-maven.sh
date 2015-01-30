VERSION=3.2.5

(cd ~/tmp
rm apache-maven-${VERSION}-bin.tar.gz
wget http://apache.fayea.com/apache-mirror/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz
tar zxvf apache-maven-${VERSION}-bin.tar.gz -C ~/dev-env

cd ~/dev-env
rm -rf maven
ln -s apache-maven-${VERSION} maven
)

mvn -version 

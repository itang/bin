VERSION=2.1
(
cd /tmp

if [ ! -f gradle-${VERSION}-all.zip ]; then
   wget https://downloads.gradle.org/distributions/gradle-${VERSION}-all.zip
fi
 
ls gradle-${VERSION}-all.zip &&
unzip gradle-${VERSION}-all.zip -d ~/dev-env &&
cd ~/dev-env &&
rm -rf gradle &&
ln -s gradle-2.1 gradle &&
gradle -v
)

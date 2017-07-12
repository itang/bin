#!/bin/bash

VERSION=2.9.8

cd /tmp
wget https://github.com/Konloch/bytecode-viewer/releases/download/v$VERSION/BytecodeViewer.$VERSION.zip

rm ~/dev-env/bytecodeviewer
mkdir ~/dev-env/bytecodeviewer && unzip BytecodeViewer.$VERSION.zip -d ~/dev-env/bytecodeviewer

echo "#!/bin/bash

java -jar \"$HOME/dev-env/bytecodeviewer/BytecodeViewer ${VERSION}.jar\"" >~/dev-env/tools/bytecode-viewer

chmod +x ~/dev-env/tools/bytecode-viewer

#!/bin/bash

FROM=frege3.24-7.100.jar
MAJOR=3.24alpha

(
    cd /tmp

    wget https://github.com/Frege/frege/releases/download/$MAJOR/frege3.24-7.100.jar

    rm -rf ~/dev-env/frege
    mkdir -p ~/dev-env/frege/lib

    cp $FROM ~/dev-env/frege/lib/
    cd ~/dev-env/frege/lib/
    ln -s $FROM frege.jar

    cd ~/dev-env/frege

    echo '#!/bin/bash

FREGE_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled"
java $FREGE_OPTS -jar `dirname $0`/lib/frege.jar -d build -target 1.7 "$@"' >fregec

    echo '#!/bin/bash

FREGE_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled"
java $FREGE_OPTS -cp build:`dirname $0`/lib/frege.jar "$@"' >frege

    chmod +x fregec frege
)

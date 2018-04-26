# native-image

## Usage

    $ native-image -cp ./target/mixed-code-hello-world-1.0-SNAPSHOT.jar -H:Name=helloworld -H:Class=hello.JavaHello -H:+ReportUnsupportedElementsAtRuntime
    $ native-image -cp ./target/mixed-code-hello-world-1.0-SNAPSHOT.jar -H:Name=helloworld --report-unsupported-elements-at-runtime hello.JavaHello
    $ native-image --verbose -cp ".:$(echo /$GROOVY_HOME/lib/*.jar | tr ' ' ':')" HiWorld
    $ native-image --verbose --no-server -cp ".:$(echo /$GROOVY_HOME/lib/*.jar | tr ' ' ':')" HiWorld
    $ native-image --no-server -cp sis.jar:. -H:Kind=SHARED_LIBRARY -H:Name=libdistance

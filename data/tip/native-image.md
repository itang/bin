# native-image


## install

    $ gu install -L  /somepath/native_image.jar
## Usage

    $ native-image -H:-CheckToolchain -H:+ReportExceptionStackTraces --initialize-at-build-time --report-unsupported-elements-at-runtime --no-fallback --verbose -jar main.jar
    $ native-image --initialize-at-build-time \
             --no-server \
             -jar ./target/hello-world-0.1.0-SNAPSHOT-standalone.jar \

    $ native-image -cp ./target/mixed-code-hello-world-1.0-SNAPSHOT.jar -H:Name=helloworld -H:Class=hello.JavaHello -H:+ReportUnsupportedElementsAtRuntime
    $ native-image -cp ./target/mixed-code-hello-world-1.0-SNAPSHOT.jar -H:Name=helloworld --report-unsupported-elements-at-runtime hello.JavaHello
    $ native-image --verbose -cp ".:$(echo /$GROOVY_HOME/lib/*.jar | tr ' ' ':')" HiWorld
    $ native-image --verbose --no-server -cp ".:$(echo /$GROOVY_HOME/lib/*.jar | tr ' ' ':')" HiWorld
    $ native-image --no-server -cp sis.jar:. -H:Kind=SHARED_LIBRARY -H:Name=libdistance

    $ native-image --static ...

    Windows
    run after 'x64 Native Tools Command Prompt for VS 2019'

## tips

    $ mvn install:install-file -Dfile=${GRAALVM_HOME}/jre/lib/svm/builder/svm.jar \
                           -DgroupId=com.oracle.substratevm \
                           -DartifactId=svm \
                           -Dversion=GraalVM-1.0.0-rc6 \
                           -Dpackaging=jar

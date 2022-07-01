# scala cli

## Usage

    $ echo 'println("Hello")' | scala-cli -S 3.1.0 -

    $ scala-cli repl -S 3.1.1 --jvm system
    $ scala-cli repl -S 3.1.0 --dependency org.wvlet.airframe::airframe-ulid:21.12.0
    $ scala-cli repl -S 3.1.0 --dep org.wvlet.airframe::airframe-canvas:21.12.0
    $ scala-cli repl -S 3.1.0 --dep org.wvlet.airframe::airframe-canvas:21.12.0 -d org.wvlet.airframe::airframe-ulid:21.12.0
    $ scala-cli repl -S 2.13 --amm

    # a lightweight launcher JAR
    $ scala-cli package Hello.scala -o hello
    $ scala-cli package MyLibrary.scala -o my-library.jar --library
    $ scala-cli package Hello.scala -o hello --assembly
    $ scala-cli package --docker HelloDocker.scala --docker-image-repository hello-docker
    $ scala-cli package --js --docker HelloDocker.scala --docker-image-repository hello-docker
    $ scala-cli package --native --docker HelloDocker.scala --docker-image-repository hello-docker
    $ scala-cli package --js HelloJs.scala -o hello.js
    $ scala-cli package --native HelloNative.scala -S 2.13.6 -o hello
    $ scala-cli package --deb Hello.scala -o hello.deb
    $ scala-cli package --rpm --output 'path.rpm' Hello.scala
    $ `scala-cli package --pkg --output 'path.pkg` Hello.scala
    $ scala-cli package --msi --output 'path.msi` Hello.scala

    $ scala-cli package --native -S 2.13 main.scala
    $ scala-cli package -f main.scala
    $ scala-cli package --js main.scala
    $ scala-cli package -f --assembly main.scala

    $ scala-cli run -S 2.13 -w main.scala

    ➜ scala-cli repl -d "fr.janalyse::zio-worksheet:2.0.0.0"
    Downloading 2 dependencies
    Welcome to Scala 3.1.3 (17.0.2, Java Java HotSpot(TM) 64-Bit Server VM).
    Type in expressions for evaluation. Or try :help.

    scala> import zio.*
    scala> import zio.worksheet.*
    scala> Console.printLine("Hello").unsafeRun
    Hello

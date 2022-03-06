# sbt

## Links

https://github.com/foundweekends/giter8/wiki/giter8-templates

## Usage

    show all tasks
    $ sbt 'tasks -V'

    show dependency tree
    $ sbt dependencyTree

    for dotty
    $ sbt launchIDE

    # run with arguments
    $ sbt "run -f hello"
    $ sbt "run --do-it"

    # run in sub project
    $ sbt "start/run"


    # new project
    sbt -Dsbt.version=1.0.3 new https://github.com/akka/akka-http-scala-seed.g8
    sbt new scala/scala-seed.g8
    sbt new scala/hello-world.g8

    sbt ne vmunier/akka-http-scalajs.g8

    sbt new akka/akka-scala-seed.g8
    sbt new akka/akka-java-seed.g8
    sbt new akka/hello-akka.g8

    sbt new scala-native/scala-native.g8
    sbt new scala-native/sbt-crossproject.g8

    sbt new holdenk/sparkProjectTemplate.g8
    sbt new spark-jobserver/spark-jobserver.g8
    sbt new ScalaWilliam/akka-stream-kafka-template.g8
    sbt new liquidarmour/akka-http-docker.g8

    sbt new djspiewak/base.g8
    sbt new anvie/multiproject.g8

    sbt new PurpleKingdomGames/tyrian.g8

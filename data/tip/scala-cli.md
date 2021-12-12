# scala cli

## Usage

    $ scala-cli repl -S 3.1.0 --dependency org.wvlet.airframe::airframe-ulid:21.12.0
    $ scala-cli repl -S 2.13 --amm

    $ scala-cli package --native -S 2.13 main.scala
    $ scala-cli package -f main.scala
    $ scala-cli package --js main.scala
    $ scala-cli package -f --assembly main.scala

    $ scala-cli run -S 2.13 -w main.scala

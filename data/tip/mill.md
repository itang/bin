# mill

## Usage

    mill resolve xxx._
    mill resolve core._

    mill mill.scalalib.GenIdea/idea
    mill mill.bsp.BSP/install

    mill -i foo.console
    mill -i foo.repl

    mill foo.run
    mill _.run
    mill -w _.run

    mill foo.assembly

    mill -j 4 __.compile

    mill core.ivyDepsTree

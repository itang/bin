#!/bin/bash

curl -L -o ~/.local/bin/coursier https://git.io/vgvpD && chmod +x ~/.local/bin/coursier
coursier --help

coursier bootstrap com.geirsson:scalafmt-cli_2.12:1.3.0 -o ~/.local/bin/scalafmt --standalone --main org.scalafmt.cli.Cli

scalafmt --help

coursier bootstrap ch.epfl.scala:scalafix-cli_2.12.3:0.5.3 -f --main scalafix.cli.Cli -o ~/.local/bin/scalafix
scalafix --help

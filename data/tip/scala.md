# Scala

## Usage

## JVM options

`scala -J-Xmx2g`

`JAVA_OPTS="-Xmx1g -Xms1g" scala`

### REPL

```scala
import collection.JavaConverters._
(0 to 10).toList.asJava.parallelStream.forEach(println)
```

# Scala

## Usage

    import collection.JavaConverters._
    (0 to 10).toList.asJava.parallelStream.forEach(println)



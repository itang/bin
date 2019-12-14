# amm

## Usage

    import $file.MyScript._ 
    import $file.MyScript, MyScript.

    import $ivy.`org.scalaz::scalaz-core:7.2.27`, scalaz._, Scalaz._
    import $ivy.`com.google.guava:guava:18.0`, com.google.common.collect._


    desugar{ (0 until 10).map( _ * 2) }
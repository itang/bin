# jq

links: https://stedolan.github.io/jq/tutorial/

## Usage

    格式化整个输出
    $ ./bin/target/mill --show core.assemblyClasspath | jq "."

    获取数组第一个元素
    $ ./bin/target/mill --show core.assemblyClasspath | jq ".[0]"

    获取所有数组元素的path属性
    $ ./bin/target/mill --show core.assemblyClasspath | jq ".[].path"

## Sample

```bash
for x in $(./bin/target/mill --show core.assemblyClasspath | jq ".[].path"); do
  x=${x:1:-1}
  echo $x
  if [ -f $x ] ; then
    du -sh $x
  fi
done
```

# tar

## Usage

### 压缩

  $ tar -czvf filename.tar.gz /path/to/directory/or/file

    tar: 这是用来打包和压缩文件的命令。
    -c: 表示创建一个新的归档文件。
    -z: 表示使用 gzip 程序来压缩归档文件。
    -v: 表示在压缩过程中显示详细的信息（verbose 模式）。
    -f: 后面跟着的是归档文件的名称。

### 解压缩


  在所有情况下，-x 参数表示解压，-z 参数表示使用 gzip 进行解压缩，-f 参数后面跟的是文件名

  $ tar -xzvf filename.tgz

  $ tar -xzvf filename.tar.gz

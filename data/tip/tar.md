# tar

## Usage

.tar.gz 是一种非常常见的文件压缩格式，它由 .tar 文件和 .gz 压缩算法组合而成。.tar 是一个归档工具，用于将多个文件和目录合并成一个单一的文件，而 .gz 是一个压缩工具，用于压缩 .tar 文件，从而进一步减小文件的大小。

.tgz 是 .tar.gz 文件的一个变体，它本质上是相同的文件类型，只是扩展名不同。

.tar.xz 是一种文件压缩格式，由 .tar 文件和 .xz 压缩算法组合而成。.tar 是一种归档文件格式，通常用于将多个文件和目录合并成一个单一的文件，而 .xz 是一种高压缩比的压缩算法，用于压缩 .tar 文件。

### 压缩

$ tar -czvf filename.tar.gz /path/to/directory/or/file

    tar: 这是用来打包和压缩文件的命令。
    -c: 表示创建一个新的归档文件。
    -z: 表示使用 gzip 程序来压缩归档文件。
    -v: 表示在压缩过程中显示详细的信息（verbose 模式）。
    -f: 后面跟着的是归档文件的名称。

$ tar -cvf example.tar.xz /path/to/directorytar -xvf example.tar.xz

### 解压缩

在所有情况下，-x 参数表示解压，-z 参数表示使用 gzip 进行解压缩，-f 参数后面跟的是文件名

$ tar -xzvf filename.tgz

$ tar -xzvf filename.tar.gz

$ tar -xvf example.tar.xz

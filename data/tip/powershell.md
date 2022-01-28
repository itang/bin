# powershell

## Usage

    设置环境变量
    $Env:GOOS = "linux"
    $Env:GOARCH = "amd64"
    $ go build .\main.go

    $ Invoke-WebRequest -Uri "https://dl.min.io/server/minio/release/windows-amd64/minio.exe" -OutFile "D:\dev-env\minio\minio.exe"
    $ setx MINIO_ROOT_USER admin

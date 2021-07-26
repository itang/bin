# dotnet

see https://docs.microsoft.com/zh-cn/dotnet/core/tools/dotnet

## Usage

    $ dotnet new --list
    $ dotnet new -i WebSharper.Templates
    $ dotnet new websharper-web

    $ dotnet new classlib -lang "F#" -o myLibrary
    $ dotnet add myLibrary/myLibrary.fsproj package Newtonsoft.Json
    $ dotnet new console -lang "F#" -o myApp

    $ dotnet run
    $ dotnet watch run

    $ dotnet add package Plotly.NET

    Runtime depended executable
    $ dotnet build
    $ dotnet build --configuration Release
    $ dotnet build -c Release

    Self-contained executable
    $ dotnet publish -c Release -r win-x64
    $ dotnet publish -c Release -r linux-x64

    Native single-executable
    TODO

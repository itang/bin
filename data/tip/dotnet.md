# dotnet

see https://docs.microsoft.com/zh-cn/dotnet/core/tools/dotnet

## Usage

    $ dotnet new -i WebSharper.Templates
    $ dotnet new websharper-web

    $ dotnet new classlib -lang "F#" -o myLibrary
    $ dotnet add myLibrary/myLibrary.fsproj package Newtonsoft.Json
    $ dotnet new console -lang "F#" -o myApp

    $ dotnet run

    $ dotnet add package Plotly.NET

    $ dotnet build
    $ dotnet build --configuration Release
    $ dotnet build -c Release

# dotnet

see https://docs.microsoft.com/zh-cn/dotnet/core/tools/dotnet

## Usage

    $ dotnet new sln -o FSNetCore
    $ cd FSNetCore
    $ dotnet new classlib -lang "F#" -o src/Library
    $ dotnet add src/Library/Library.fsproj package Newtonsoft.Json
    $ dotnet sln add src/Library/Library.fsproj
    $ dotnet new console -lang "F#" -o src/App
    $ dotnet add src/App/App.fsproj reference src/Library/Library.fsproj
    $ dotnet sln add src/App/App.fsproj

    $ dotnet new --list
    $ dotnet new -i WebSharper.Templates
    $ dotnet new -i "fake-template::*"

    # checks for available updates for installed template packages.
    $ dotnet new --update-check
    #  applies updates to installed template packages.
    $ dotnet new --update-apply

    $ dotnet new websharper-web

    $ dotnet new classlib -lang "F#" -o myLibrary
    $ dotnet add myLibrary/myLibrary.fsproj package Newtonsoft.Json
    $ dotnet new console -lang "F#" -o myApp

    local dotnet tool
    $ dotnet new tool-manifest
    $ dotnet tool install fake-cli
    $ dotnet fake --version

    $ dotnet tool install fake-cli -g
    $ fake

    # update tool
    $ dotnet tool update -g fantomas-tool
    $ dotnet tool update --global fantomas-tool --version 4.6.0-alpha-004
    $ dotnet tool update fable --version 3.7.0-beta-*

    $ dotnet run
    $ dotnet run --no-build
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
    $ dotnet publish -r linux-x64 -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true
    $ dotnet publish -r win-x64 -c Release /p:PublishSingleFile=true /p:PublishTrimmed=true

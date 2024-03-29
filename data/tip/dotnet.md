# dotnet

see <https://docs.microsoft.com/zh-cn/dotnet/core/tools/dotnet>

## Usage

    $ dotnet nuget locals all -list
    $ dotnet nuget locals all -clear

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

    fable
    $ dotnet new --install Fable.Template
    $ dotnet new fable -o webapp1
    $ cd webappi
    $ npm install
    $ npm start


    local dotnet tool
    $ dotnet new tool-manifest
    $ dotnet tool install fake-cli
    $ dotnet fake --version

    $ dotnet tool install fake-cli -g
    $ fake
    $ dotnet tool install -g fantomas --prerelease

    # update tool
    $ dotnet tool update -g fantomas-tool
    $ dotnet tool update --global fantomas-tool --version 4.6.0-alpha-004
    $ dotnet tool update fable --version 3.7.0-beta-*

    $ dotnet run
    $ dotnet run --no-build
    $ dotnet watch run

    $ dotnet run -c Release -f net6.0 --filter '**' --runtimes net6.0 net7.0
    $ dotnet run -c Release -f net7.0 --filter '**' --runtimes net7.0

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

    $ dotnet publish -c Release -r win-x64 --self-contained /p:RunNativeAot=True

## dotnet fsi

    load package
    > #r "nuget: Newtonsoft.Json"

## dotnet fable

    dotnet tool install fable --global --version 4.0.0-snake-island-*
    dotnet tool update fable --global --version 4.0.0-snake-island-*

    dotnet new console -lang F# -o testfable && cd testfable
    dotnet new tool-manifest
    dotnet tool install fable --local --version 4.0.0-snake-island-*

    dotnet fable watch src -s --run vite
    dotnet fable watch . --run deno run --watch Program.fs.js

    dotnet fable
    dotnet fable --lang rust

    deno run Program.fs.js

## native aot configuration

```xml
<!-- Publish Native AOT -->
<PublishAot>true</PublishAot>
<StripSymbols>true</StripSymbols>

<!-- https://docs.microsoft.com/zh-cn/dotnet/core/deploying/trimming/prepare-libraries-for-trimming -->
<IsTrimmable>true</IsTrimmable>
<PublishTrimmed>true</PublishTrimmed>

<!-- https://github.com/dotnet/runtime/blob/main/src/coreclr/nativeaot/docs/optimizing.md -->
<!-- <TrimMode>link</TrimMode> -->
<TrimMode>full</TrimMode>
<InvariantGlobalization>true</InvariantGlobalization>
<IlcGenerateStackTraceData>false</IlcGenerateStackTraceData>
<IlcOptimizationPreference>Speed</IlcOptimizationPreference>
```

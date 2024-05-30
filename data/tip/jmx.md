# jmx

VisualVM 是一个强大的 Java 虚拟机监视和分析工具，它提供了一个图形界面来查看 Java 应用程序的详细信息，包括 CPU 使用率、内存消耗、线程和类加载等。VisualVM 可以通过 JMX（Java Management Extensions）来远程监控和管理 Java 应用程序。

jmxremote 是一个 Java 应用程序，它允许启用 JMX 连接到远程 Java 虚拟机（JVM）。通过配置 jmxremote，可以使得 VisualVM 连接到远程的 JVM 进行监控和诊断。

要使用 VisualVM 连接到配置了 jmxremote 的 Java 应用程序，你需要遵循以下步骤：

配置 JMX 连接： 在 Java 应用程序的启动参数中添加 jmxremote 相关的配置。例如，使用以下参数启动 JVM：

```
-Dcom.sun.management.jmxremote
-Dcom.sun.management.jmxremote.port=9010
-Dcom.sun.management.jmxremote.authenticate=false
-Dcom.sun.management.jmxremote.ssl=false
```

这些参数允许 JMX 连接到端口 9010，并且不使用认证和 SSL。

启动 VisualVM： 打开 VisualVM 应用程序。

连接到远程 JVM： 在 VisualVM 中，选择 "File" > "Add JMX Connection..."。

输入连接信息： 在弹出的对话框中，输入远程 JVM 的 IP 地址和端口号（例如 192.168.1.100:9010），然后点击 "Connect"。

监控应用程序： 连接成功后，VisualVM 将显示远程 JVM 的详细信息，你可以开始监控和分析应用程序的性能。

请注意，出于安全考虑，建议在生产环境中使用认证和 SSL 来保护 JMX 连接。上述示例中禁用了这些安全特性，仅适用于测试和开发环境。在实际部署时，请按照安全最佳实践进行配置。

$ visualvm --openjmx localhost:9010

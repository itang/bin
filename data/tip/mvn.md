# maven

## Usage

    $ mvn dependency:tree
    $ mvn help:effective-pom

    $ mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
    $ mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

    # 复制依赖的jar包
    $ mvn clean dependency:copy-dependencies package
    $ mvn clean dependency:copy-dependencies -DoutputDirectory=lib -DincludeScope=compile
    $ mvn clean dependency:copy-dependencies package -DoutputDirectory=lib -DincludeScope=compile

    $ mvn exec:java -Dexec.mainClass="com.example.Main"
    $ mvn clean package -U
    $ mvn package -Dmaven.test.skip=true

    in offline mode
    $ mvn -o install

    ensure all dependencies installed locally before to work offline
    $ mvn dependency:go-offline

    profiles
    $ mvn package -P profileTest1
    $ mvn help:active-profiles

    show-project-version
    $mvn help:evaluate -Dexpression=project.version -q -DforceStdout

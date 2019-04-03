# maven

## Usage

    $ mvn dependency:tree
    $ mvn help:effective-pom

    $ mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
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


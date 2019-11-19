# A blank project for Spring MVC + GraalVM

Maven archetype to create a pre-configured maven project for a Spring MVC + GraalVM application.

## How to use

```
mvn archetype:generate\
 -DarchetypeGroupId=am.ik.archetype\
 -DarchetypeArtifactId=graalvm-springmvc-blank-archetype\
 -DarchetypeVersion=0.1.1
```

Example

```
mvn archetype:generate\
 -DarchetypeGroupId=am.ik.archetype\
 -DarchetypeArtifactId=graalvm-springmvc-blank-archetype\
 -DarchetypeVersion=0.1.1\
 -DgroupId=com.example\
 -DartifactId=demo-tomcat\
 -Dversion=1.0.0-SNAPSHOT\
 -B
```

> GraalVM is required
> 
> ```
> export JAVA_HOME=/path-to-graalvm
> export PATH=$PATH:$JAVA_HOME/bin
> ```
> 
> If you are using SDKMAN, try
> 
> ```
> sdk install java 19.2.1-grl
> sdk use java 19.2.1-grl
> ```

```
cd demo-tomcat
chmod +x mvnw*
./mvnw clean package -Pgraal
./target/classes/demo-tomcat-osx-x86_64
```

The following log will be output.

```
  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                        

Nov 19, 2019 12:24:42 PM org.springframework.boot.StartupInfoLogger logStarting
INFO: Starting App on makinoMacBook-puro.local with PID 44475 (/private/tmp/demo-tomcat/target/classes/demo-tomcat-osx-x86_64 started by maki in /private/tmp/demo-tomcat)
...
INFO: Starting ProtocolHandler ["http-nio-8080"]
Nov 19, 2019 12:24:42 PM org.springframework.boot.web.embedded.tomcat.TomcatWebServer start
INFO: Tomcat started on port(s): 8080 (http) with context path ''
Nov 19, 2019 12:24:42 PM org.springframework.boot.StartupInfoLogger logStarted
INFO: Started App in 0.082 seconds (JVM running for 0.085)
```

Call the greeting endpoint

```
curl localhost:8080/greeting
```

Build a binary for linux with Docker

```
docker run --rm \
   -v "$PWD":/usr/src \
   -v "$HOME/.m2":/root/.m2 \
   -w /usr/src \
   oracle/graalvm-ce:19.2.1 \
   ./mvnw package -Pgraal
```

## License

Licensed under the Apache License, Version 2.0.

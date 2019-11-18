# A blank project for GraalVM

Maven archetype to create a pre-configured maven project for a Spring MVC + GraalVM application.

## How to use

```
mvn archetype:generate\
 -DarchetypeGroupId=am.ik.archetype\
 -DarchetypeArtifactId=graalvm-springmvc-blank-archetype\
 -DarchetypeVersion=0.1.0
```

Example

```
mvn archetype:generate\
 -DarchetypeGroupId=am.ik.archetype\
 -DarchetypeArtifactId=graalvm-springmvc-blank-archetype\
 -DarchetypeVersion=0.1.0\
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

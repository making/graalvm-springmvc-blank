mvn org.apache.maven.plugins:maven-archetype-plugin:2.3:generate \
  -DarchetypeGroupId=am.ik.archetype \
  -DarchetypeArtifactId=graalvm-springmvc-blank-archetype \
  -DarchetypeVersion=0.1.0-SNAPSHOT \
  -DgroupId=com.example \
  -DartifactId=demo-cli \
  -Dversion=1.0.0-SNAPSHOT \
  -DarchetypeCatalog=https://oss.sonatype.org/content/repositories/snapshots

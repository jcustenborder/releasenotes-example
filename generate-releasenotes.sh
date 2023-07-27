#mvn org.apache.maven.plugins:maven-dependency-plugin:2.1:get -DrepoUrl=https://download.java.net/maven/2/  -Dartifact=se.bjurr.gitchangelog:git-changelog-command-line:1.103.2
java -jar -Dorg.slf4j.simpleLogger.defaultLogLevel=trace ~/.m2/repository/se/bjurr/gitchangelog/git-changelog-command-line/1.103.2/git-changelog-command-line-1.103.2.jar -sf ./changelog.json -std -tec "
# Changelog

Changelog.

{{#issues}}
  {{ . }}
  {{ type }}
{{/issues}}
"
mvn org.apache.maven.plugins:maven-dependency-plugin:2.1:get -DrepoUrl=https://download.java.net/maven/2/  -Dartifact=se.bjurr.gitchangelog:git-changelog-command-line:1.104.1
java -jar -Dorg.slf4j.simpleLogger.defaultLogLevel=trace ~/.m2/repository/se/bjurr/gitchangelog/git-changelog-command-line/1.104.1/git-changelog-command-line-1.104.1.jar -sf ./changelog.json -std -tec "
# Release Notes

{{#ifContainsIssueLabel issues label='enhancement'}}
## Enhancements

{{#issues}}
{{#ifIssueLabel . label='enhancement'}}
* [{{ issue }} - {{ title}}]({{ link }})
{{/ifIssueLabel}}
{{/issues}}
{{/ifContainsIssueLabel}}

{{#ifContainsIssueLabel issues label='bug'}}
## Bugs

{{#issues}}
{{#ifIssueLabel . label='bug'}}
* [{{ issue }} - {{ title}}]({{ link }})
{{/ifIssueLabel}}
{{/issues}}
{{/ifContainsIssueLabel}}
"


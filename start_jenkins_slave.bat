rem: download slave jar
powershell.exe -Command "& {Invoke-WebRequest http://jenkins/jnlpJars/slave.jar -OutFile C:\jenkins\slave.jar}"
:start
cd C:\jenkins
java -jar slave.jar -jnlpUrl http://jenkins-/computer/%computername%/slave-agent.jnlp
goto start 
rem: in case of network problems jenkins slave will be restarted

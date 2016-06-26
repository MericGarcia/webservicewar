set CATALINA_HOME=apache-tomcat-8.0.36
set CATALINA_BASE=apache-tomcat-8.0.36
set JRE_HOME=C:\Program Files\Java\jre1.8.0_91

call apache-tomcat-8.0.36\bin\shutdown.bat
rmdir apache-tomcat-8.0.36\webapps\webser*
del apache-tomcat-8.0.36\webapps\webser*

call powershell (New-Object Net.WebClient).DownloadFile('https://updates.jenkins-ci.org/download/war/1.658/jenkins.war','webservice.war')
move webservice.war apache-tomcat-8.0.36\webapps\
call apache-tomcat-8.0.36\bin\startup.bat

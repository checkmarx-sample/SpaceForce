net stop Tomcat9
del /F /Q "%TOMCAT_HOME%\webapps\tradeportal"
del /F /Q "%TOMCAT_HOME%\webapps\tradeportal.war"
ant all
copy ..\dist\tradeportal.war "%TOMCAT_HOME%\webapps\."
net start Tomcat9
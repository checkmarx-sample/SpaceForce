net stop Tomcat9
del /F /Q "%TOMCAT_HOME%\webapps\mytradeportal"
del /F /Q "%TOMCAT_HOME%\webapps\mytradeportal.war"
cd C:\Users\admin\git\tradeportal\tradeportal
ant all
del /F /Q  ..\dist\mytradeportal.war
rename ..\dist\tradeportal.war  mytradeportal.war
copy ..\dist\mytradeportal.war "%TOMCAT_HOME%\webapps\."
net start Tomcat9

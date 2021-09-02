@echo off
echo.
echo [信息] 使用Jar命令运行Web工程。
echo.

cd %~dp0
cd ../pear-entrance/target

set JAVA_OPTS=-Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

for /r %%j in (pear-entrance*.jar) do  java -jar %JAVA_OPTS% %%j 

cd bin
pause
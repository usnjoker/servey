@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  usnjoker startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and USNJOKER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\usnjoker.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-data-rest-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jetty-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-actuator-1.1.8.RELEASE.jar;%APP_HOME%\lib\thymeleaf-spring4-2.1.2.RELEASE.jar;%APP_HOME%\lib\commons-lang3-3.2.1.jar;%APP_HOME%\lib\guava-16.0.1.jar;%APP_HOME%\lib\poi-3.9.jar;%APP_HOME%\lib\mysql-connector-java-5.1.31.jar;%APP_HOME%\lib\bootstrap-3.2.0.jar;%APP_HOME%\lib\font-awesome-4.2.0.jar;%APP_HOME%\lib\jquery-2.0.3-1.jar;%APP_HOME%\lib\spring-boot-starter-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-core-4.0.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-1.1.8.RELEASE.jar;%APP_HOME%\lib\hibernate-entitymanager-4.3.6.Final.jar;%APP_HOME%\lib\spring-orm-4.0.7.RELEASE.jar;%APP_HOME%\lib\spring-data-jpa-1.6.4.RELEASE.jar;%APP_HOME%\lib\spring-aspects-4.0.7.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.3.4.jar;%APP_HOME%\lib\jackson-databind-2.3.4.jar;%APP_HOME%\lib\spring-tx-4.0.7.RELEASE.jar;%APP_HOME%\lib\spring-data-rest-webmvc-2.1.4.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.0.3.Final.jar;%APP_HOME%\lib\spring-web-4.0.7.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.0.7.RELEASE.jar;%APP_HOME%\lib\jetty-webapp-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-jsp-8.1.15.v20140411.jar;%APP_HOME%\lib\spring-boot-actuator-1.1.8.RELEASE.jar;%APP_HOME%\lib\thymeleaf-2.1.2.RELEASE.jar;%APP_HOME%\lib\commons-codec-1.5.jar;%APP_HOME%\lib\spring-boot-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.1.8.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.1.8.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.13.jar;%APP_HOME%\lib\spring-aop-4.0.7.RELEASE.jar;%APP_HOME%\lib\aspectjrt-1.8.2.jar;%APP_HOME%\lib\aspectjweaver-1.8.2.jar;%APP_HOME%\lib\spring-jdbc-4.0.7.RELEASE.jar;%APP_HOME%\lib\tomcat-jdbc-7.0.55.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\jboss-logging-annotations-1.2.0.Beta1.jar;%APP_HOME%\lib\hibernate-core-4.3.6.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-4.0.5.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\jboss-transaction-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\spring-beans-4.0.7.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-1.8.4.RELEASE.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.7.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.1.8.RELEASE.jar;%APP_HOME%\lib\jackson-core-2.3.4.jar;%APP_HOME%\lib\spring-data-rest-core-2.1.4.RELEASE.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\classmate-1.0.0.jar;%APP_HOME%\lib\jetty-xml-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-servlet-8.1.15.v20140411.jar;%APP_HOME%\lib\javax.servlet.jsp-2.2.0.v201112011158.jar;%APP_HOME%\lib\org.apache.jasper.glassfish-2.2.2.v201112011158.jar;%APP_HOME%\lib\javax.servlet.jsp.jstl-1.2.0.v201105211821.jar;%APP_HOME%\lib\org.apache.taglibs.standard.glassfish-1.2.0.v201112081803.jar;%APP_HOME%\lib\javax.el-2.2.0.v201108011116.jar;%APP_HOME%\lib\com.sun.el-2.2.0.v201108011116.jar;%APP_HOME%\lib\org.eclipse.jdt.core-3.7.1.jar;%APP_HOME%\lib\ognl-3.0.6.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.7.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.7.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\tomcat-juli-7.0.55.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-1.1.0.Final.jar;%APP_HOME%\lib\xml-apis-1.0.b2.jar;%APP_HOME%\lib\tomcat-embed-core-7.0.55.jar;%APP_HOME%\lib\tomcat-embed-el-7.0.55.jar;%APP_HOME%\lib\tomcat-embed-logging-juli-7.0.55.jar;%APP_HOME%\lib\spring-hateoas-0.16.0.RELEASE.jar;%APP_HOME%\lib\spring-plugin-core-1.1.0.RELEASE.jar;%APP_HOME%\lib\evo-inflector-1.2.jar;%APP_HOME%\lib\jetty-util-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-security-8.1.15.v20140411.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\jetty-server-8.1.15.v20140411.jar;%APP_HOME%\lib\javax.servlet-3.0.0.v201112011016.jar;%APP_HOME%\lib\jetty-continuation-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-http-8.1.15.v20140411.jar;%APP_HOME%\lib\jetty-io-8.1.15.v20140411.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\slf4j-api-1.7.7.jar;%APP_HOME%\lib\spring-expression-4.0.7.RELEASE.jar;%APP_HOME%\lib\spring-context-4.0.7.RELEASE.jar

@rem Execute usnjoker
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %USNJOKER_OPTS%  -classpath "%CLASSPATH%" com.usnjoker.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable USNJOKER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%USNJOKER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega

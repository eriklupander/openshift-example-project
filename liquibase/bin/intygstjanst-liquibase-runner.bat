@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  intygstjanst-liquibase-runner startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and INTYGSTJANST_LIQUIBASE_RUNNER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dfile.encoding=utf8"

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
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\intygstjanst-liquibase-runner-0-SNAPSHOT.jar;%APP_HOME%\lib\intygstjanst-persistence-0-SNAPSHOT.jar;%APP_HOME%\lib\jsr305-3.0.0.jar;%APP_HOME%\lib\mysql-connector-java-5.1.40.jar;%APP_HOME%\lib\liquibase-core-3.3.5.jar;%APP_HOME%\lib\common-support-0-SNAPSHOT.jar;%APP_HOME%\lib\usertype.extended-5.0.0.GA.jar;%APP_HOME%\lib\usertype.core-5.0.0.GA.jar;%APP_HOME%\lib\hibernate-entitymanager-5.0.1.Final.jar;%APP_HOME%\lib\hibernate-core-5.0.1.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\spring-data-jpa-1.9.0.RELEASE.jar;%APP_HOME%\lib\spring-orm-4.1.7.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-4.1.7.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.2.2.RELEASE.jar;%APP_HOME%\lib\auto-value-1.1.jar;%APP_HOME%\lib\logging-util-0-SNAPSHOT.jar;%APP_HOME%\lib\clinicalprocess-healthcond-certificate-schemas-3.1.0-RC1.1.jar;%APP_HOME%\lib\schemas-contract-2.1.5.jar;%APP_HOME%\lib\intyg-clinicalprocess-healthcond-certificate-schematron-1.0.22.jar;%APP_HOME%\lib\ph-schematron-3.0.1.jar;%APP_HOME%\lib\jackson-databind-2.8.1.jar;%APP_HOME%\lib\guava-20.0.jar;%APP_HOME%\lib\Saxon-HE-9.6.0-7.jar;%APP_HOME%\lib\usertype.spi-5.0.0.GA.jar;%APP_HOME%\lib\spring-data-commons-1.11.0.RELEASE.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.12.jar;%APP_HOME%\lib\logback-classic-1.0.11.jar;%APP_HOME%\lib\ph-jaxb-6.2.0.jar;%APP_HOME%\lib\ph-commons-6.2.0.jar;%APP_HOME%\lib\slf4j-api-1.7.12.jar;%APP_HOME%\lib\spring-context-4.2.2.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.2.2.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.2.2.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.2.2.RELEASE.jar;%APP_HOME%\lib\spring-core-4.2.2.RELEASE.jar;%APP_HOME%\lib\aspectjrt-1.8.6.jar;%APP_HOME%\lib\schemas-support-2.1.3.jar;%APP_HOME%\lib\cxf-rt-frontend-jaxws-3.1.3.jar;%APP_HOME%\lib\cxf-rt-transports-http-3.1.3.jar;%APP_HOME%\lib\jaxb2-basics-runtime-0.9.5.jar;%APP_HOME%\lib\jackson-annotations-2.8.0.jar;%APP_HOME%\lib\jackson-core-2.8.1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\logback-core-1.0.11.jar;%APP_HOME%\lib\xml-resolver-1.2.jar;%APP_HOME%\lib\cxf-rt-frontend-simple-3.1.3.jar;%APP_HOME%\lib\cxf-rt-ws-addr-3.1.3.jar;%APP_HOME%\lib\cxf-rt-bindings-soap-3.1.3.jar;%APP_HOME%\lib\cxf-rt-databinding-jaxb-3.1.3.jar;%APP_HOME%\lib\cxf-rt-wsdl-3.1.3.jar;%APP_HOME%\lib\asm-5.0.4.jar;%APP_HOME%\lib\cxf-rt-bindings-xml-3.1.3.jar;%APP_HOME%\lib\cxf-rt-ws-policy-3.1.3.jar;%APP_HOME%\lib\cxf-core-3.1.3.jar;%APP_HOME%\lib\annotations-2.0.3.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\geronimo-jta_1.1_spec-1.1.1.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\woodstox-core-asl-4.4.1.jar;%APP_HOME%\lib\xmlschema-core-2.2.1.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-1.2.2.Final.jar;%APP_HOME%\lib\xml-apis-1.0.b2.jar;%APP_HOME%\lib\stax2-api-3.1.4.jar;%APP_HOME%\lib\wsdl4j-1.6.3.jar;%APP_HOME%\lib\jaxb-impl-2.2.11.jar;%APP_HOME%\lib\jaxb-core-2.2.11.jar;%APP_HOME%\lib\neethi-3.0.3.jar

@rem Execute intygstjanst-liquibase-runner
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %INTYGSTJANST_LIQUIBASE_RUNNER_OPTS%  -classpath "%CLASSPATH%" liquibase.integration.commandline.Main --driver=com.mysql.jdbc.Driver --classpath=lib/intygstjanst-persistence-0-SNAPSHOT.jar --changeLogFile=changelog/changelog.xml %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable INTYGSTJANST_LIQUIBASE_RUNNER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%INTYGSTJANST_LIQUIBASE_RUNNER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega

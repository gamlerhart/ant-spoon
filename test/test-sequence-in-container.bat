echo "Testing Ant Now"

IF NOT DEFINED ANT_HOME (
	echo "%%ANT_HOME%% is missing"
	exit 1
)

IF NOT EXIST %ANT_HOME%\bin\ant.bat (
	echo "%%ANT_HOME%%\bin\ant.bat"
	exit 2
)

ant -f hello-ant.xml
IF %ERRORLEVEL% NEQ 0 exit %ERRORLEVEL%

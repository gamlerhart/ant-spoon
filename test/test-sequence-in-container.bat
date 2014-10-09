echo "Testing Ant Now"

IF NOT DEFINED RUBY_HOME (
	echo "%%RUBY_HOME%% is missing"
	exit 1
)

IF NOT EXIST %RUBY_HOME%\bin\ruby.exe(
	echo "%RUBY_HOME%\bin\ruby.exe didn't exit"
	exit 2
)

gem install haml
IF %ERRORLEVEL% NEQ 0 (
	echo "gem command doesn't work"
	exit %ERRORLEVEL%
)
ruby hello-world.rb
IF %ERRORLEVEL% NEQ 0 (
	echo "ruby command doesn't work"
	exit %ERRORLEVEL%
)

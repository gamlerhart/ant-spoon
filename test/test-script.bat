@echo off
IF NOT DEFINED TO_TEST (
	echo "Expect that %%TO_TEST%% points at the image under test"
	exit /b 1
)
spoon run --attach --working-dir="%CD%" %TO_TEST% /c test-sequence-in-container.bat
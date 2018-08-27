all:
	cc -dynamiclib -o loader.dylib loader.c
run: all
	DYLD_INSERT_LIBRARIES=loader.dylib nohup /Applications/Skype.app/Contents/MacOS/Skype >/dev/null 2>&1 &

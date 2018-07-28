#!/bin/bash
source ~/.hvm/config.sh
case $PLATFORM in
	WIN* )
		HAXE_STD_PATH="`cygpath -w $HAXEPATH/std`"
		HAXE_LIBRARY_PATH="`cygpath -w $HAXEPATH/std`"
		HAXELIBPATH="`cygpath -w $HVM/versions/haxelib/$HAXELIB`"
		#env
		exec $HAXEPATH/haxelib "$@"
	;;
esac
if [[ $HAXE == 2* ]]; then
	exec $HAXEPATH/haxelib "$@"
elif [ -e $HAXELIBPATH/tools ]; then
	exec haxe -cp $HAXELIBPATH --run tools.haxelib.Main "$@"
else
	exec haxe -cp $HAXELIBPATH --run haxelib.client.Main "$@"
fi

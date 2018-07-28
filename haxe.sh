#!/bin/bash
source ~/.hvm/config.sh
case $PLATFORM in
	WIN* )
		HAXE_STD_PATH="`cygpath -w $HAXEPATH/std`"
		HAXE_LIBRARY_PATH="`cygpath -w $HAXEPATH/std`"
		HXPATH="$HAXEPATH"
		HAXEPATH="`cygpath -w $HAXEPATH`"
		#echo $HAXEPATH
		exec $HXPATH/haxe "$@"
	;;
esac
exec $HAXEPATH/haxe "$@"

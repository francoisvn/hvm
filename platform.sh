PLATFORM='unknown'
case "$OSTYPE" in
	linux*)
		MACHINE_TYPE=`uname -m`
		if [ ${MACHINE_TYPE} == 'x86_64' ]; then
			PLATFORM="LINUX64"
		else
			PLATFORM="LINUX32"
		fi
	;;
	darwin*)  PLATFORM="OSX" ;;
	cygwin*)
		MACHINE_TYPE=`uname -m`
		if [ ${MACHINE_TYPE} == 'x86_64' ]; then
			#PLATFORM="WIN64"
			PLATFORM="WIN32"
		else
			PLATFORM="WIN32"
		fi
	;;
	*) echo "No support for OS: $OSTYPE" ;;
esac

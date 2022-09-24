LIBRARIES=("HortusRotary" "HortusWifi")
ARDUINOPATH="$HOME/Arduino/libraries/."

for lib in ${LIBRARIES[@]}
do	
	echo "[ COPY LIBRARY ] === $lib === "
	cp -rf $lib $ARDUINOPATH
done

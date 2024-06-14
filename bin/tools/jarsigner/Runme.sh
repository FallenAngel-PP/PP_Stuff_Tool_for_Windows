# requires mandatory 5 args which if not present shows usage
clear
if [ $# == 5 ]
then
	java -jar SignApk.jar $1 $2 $3 $4 $5
	echo "Sign complete."
	echo "Find the signed apk as $5"
	echo
else
	echo "Lack of arguments supplied!"
	echo
	java -jar SignApk.jar
fi
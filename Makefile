SRC=adblock.css infocenter.css qzone.css

index.zip: index.css
	zip $@ $?

index.css: ${SRC}
	echo "@-moz-document domain(\"qq.com\"){" >> $@
	cat $? >> $@
	echo "}" >> $@

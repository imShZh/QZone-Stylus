SRC=adblock.css qzone.css infocenter.css

index.zip: index.css
	zip $@ $?

index.css: ${SRC}
	cat $? > $@

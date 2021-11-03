SRC=adblock.css qzone.css

index.zip: index.css
	zip $@ $?

index.css: ${SRC}
	cat $? > $@

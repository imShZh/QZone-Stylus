SRC=adblock.css qzone.css

index.css: ${SRC}
	cat $? > $@

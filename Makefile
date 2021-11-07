.DEFAULT_GOAL := index.zip
SRC=adblock.css infocenter.css qzone.css
DST=index.zip index.min.css index.css

.PHONY: clean
clean:
	rm -f $(DST)

index.zip: index.min.css
	zip $@ $?

# Use '$' to escape
index.min.css: index.css
	cat $? | tr -d "\t\n\r" > $@

index.css: ${SRC}
	echo "@-moz-document domain(\"qq.com\"){" >> $@
	cat $? >> $@
	echo "}" >> $@

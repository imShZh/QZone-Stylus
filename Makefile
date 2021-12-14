.DEFAULT_GOAL := index.zip
SRC=adblock.css infocenter.css other.css qzone.css
DST=index.zip index.min.css index.css

.PHONY: clean
clean:
	rm -f $(DST)

index.zip: index.min.css
	zip $@ $?

# Remove comments(by sed) and whitespace(by tr)
index.min.css: index.css
	sed 's/\/\*.*\*\///g' $? | tr -d "\t\n\r" > $@

index.css: ${SRC}
	echo "@-moz-document domain(\"qq.com\"){" >> $@
	cat $? >> $@
	echo "}" >> $@

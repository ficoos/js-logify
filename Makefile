.PHONY: all

all: logify.min.js

logify.min.js: logify.js
	curl -s \
	  -d compilation_level=SIMPLE_OPTIMIZATIONS \
	  -d output_format=text \
	  -d output_info=compiled_code \
	 --data-urlencode "js_code@$<" \
	 http://closure-compiler.appspot.com/compile \
	  > $@
logify.min.js.escaped: logify.min.js
	sed "s:(:\&40;:g" logify.min.js | sed 's:):\&#41;:g'> \
		logify.min.js.escaped

README.md: README.md.in logify.min.js.escaped
	sed "s:@JS@:`cat logify.min.js.escaped`:" $< > $@

clean:
	$(RM) logify.min.js
	$(RM) README.md

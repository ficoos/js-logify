.PHONY: all upload

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
	cat $< | sed 's:\\:\\\\:g' | sed 's:\&:\\\&:g' > \
		$@

install.html: install.html.in logify.min.js.escaped
	sed "s:@JS@:`cat logify.min.js.escaped`:" $< > $@

upload: install.html upload_url.txt
	scp $< `cat upload_url.txt`

clean:
	$(RM) logify.min.js
	$(RM) logify.min.js.escaped
	$(RM) install.html

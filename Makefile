
JADE = ./node_modules/.bin/jade

HTML = index.html \
	api.html \
	guide.html \
	applications.html \
	community.html \
	faq.html \
	4x/api.html

docs: $(HTML)

4x/api.html: 4x/api.jade 4x/en/api/*.jade includes/*.jade
	$(JADE) --path $< < $< > $@

%.html: %.jade includes/*.jade en/*.jade en/guide/*.jade
	$(JADE) --path $< < $< > $@

clean:
	rm -f *.html 4x/*.html

.PHONY: docs clean

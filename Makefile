
build: components bootstrap-dropdowns.css bootstrap-dropdowns.js
	@component build --dev

bootstrap-dropdowns.css: bootstrap-dropdowns.less
	node_modules/.bin/recess bootstrap-dropdowns.less --compile > bootstrap-dropdowns.css

bootstrap-dropdowns.js:
	cp node_modules/bootstrap/js/bootstrap-dropdown.js bootstrap-dropdowns.js

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-dropdowns.css

.PHONY: clean

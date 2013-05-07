
build: components bootstrap-dropdowns.css
	@component build --dev

bootstrap-dropdowns.css: bootstrap-dropdowns.less
	node_modules/.bin/recess bootstrap-dropdowns.less --compile > bootstrap-dropdowns.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-dropdowns.css

.PHONY: clean

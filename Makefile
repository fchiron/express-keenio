REPORTER = dot
DOCUMENTATION_LAYOUT = classic

test:
	@./node_modules/.bin/docco index.js lib/*.js --layout $(DOCUMENTATION_LAYOUT)
	@./node_modules/.bin/mocha --reporter $(REPORTER)
	@./node_modules/.bin/jshint lib/*.js

generate-docs:
	@./node_modules/.bin/docco index.js lib/*.js --layout $(DOCUMENTATION_LAYOUT)

.PHONY: test
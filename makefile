.PHONY: all
all: paka.js

.PHONY: clean
clean: 
	rm -f paka.js 

paka.js: paka.ts
	tsc --module commonjs paka.ts 

.PHONY: unit-test 
unit-test: paka.js
	node test/unit-test.js 

.PHONY: test-calculator
test-calculator: paka.js
	node test/calculator/test-calculator.js

.PHONY: test-json-parser
test-json-parser: paka.js
	node test/json/test-json-parser.js

.PHONY: test
test: unit-test

.PHONY: test-all
test-all: unit-test test-calculator test-json-parser

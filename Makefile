TESTS = $(shell find test -type f -name "*.test.js")
TEST_TIMEOUT = 10000
MOCHA_REPORTER = spec

test:
	@NODE_ENV=test ./node_modules/mocha/bin/mocha \
     	--reporter $(MOCHA_REPORTER) \
        -r should \
     	--timeout $(TEST_TIMEOUT) \
     	$(TESTS)
xdagtest:
	@NODE_ENV=production ./node_modules/mocha/bin/mocha \
     	--reporter $(MOCHA_REPORTER) \
        -r should \
     	--timeout $(TEST_TIMEOUT) \
     	$(TESTS)
.PHONY: test xdagtest
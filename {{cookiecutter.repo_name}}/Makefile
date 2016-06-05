BIND_ADDRESS ?= 127.0.0.1
PORT ?= 8000

.DEFAULT_GOAL := help

.PHONY: help clean link serve

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## Clean all links
	rm -f css/font-awesome.min.css
	if [ -d node_modules ]; then \
	for i in $$(ls node_modules/reveal.js/css); do \
		rm -f css/$$i; \
	done \
	fi
	rm -f fonts
	rm -f js
	rm -f lib
	rm -f plugin

node_modules:
	npm install

link: node_modules ## Link all required resources
	ln -fs ../node_modules/font-awesome/css/font-awesome.min.css css
	for i in $$(ls node_modules/reveal.js/css); do \
		ln -fs ../node_modules/reveal.js/css/$$i css/$$i; \
	done
	ln -fs node_modules/font-awesome/fonts .
	ln -fs node_modules/reveal.js/js .
	ln -fs node_modules/reveal.js/lib .
	ln -fs node_modules/reveal.js/plugin .

serve: ## Serve the slides
	@echo "Serving slides at http://$(BIND_ADDRESS):$(PORT)/"
	@echo "Quit the server with CONTROL-C."
	@python -m http.server --bind $(BIND_ADDRESS) $(PORT)

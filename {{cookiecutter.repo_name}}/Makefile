SHELL := /bin/bash

BIND_ADDRESS ?= 127.0.0.1
PORT ?= 8000

RSYNC_DEST ?= {{ cookiecutter.rsync_destination }}
RSYNC_HOST ?= {{ cookiecutter.rsync_host }}
RSYNC_SRC ?= css js lib index.html plugin third_party_plugins webfonts
RSYNC_USER ?= {{ cookiecutter.rsync_user }}

python = /usr/bin/env python $(1)

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[\.a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: clean
clean: ## Clean all linked resources
	for i in $$(ls css); do \
		if [ -h "css/$$i" ]; then \
			rm -f css/$$i; \
		fi \
	done
	rm -f js
	rm -f lib
	rm -f plugin
	rm -f third_party_plugins/*
	rm -f webfonts

.PHONY: link
link: ## Link all required resources
	yarn install
	for i in $$(ls node_modules/@fortawesome/fontawesome-free-webfonts/css); do \
		ln -fs ../node_modules/@fortawesome/fontawesome-free-webfonts/css/$$i css/$$i; \
	done
	for i in $$(ls node_modules/reveal.js/css); do \
		ln -fs ../node_modules/reveal.js/css/$$i css/$$i; \
	done
	ln -fs node_modules/@fortawesome/fontawesome-free-webfonts/webfonts .
	ln -fs node_modules/reveal.js/js .
	ln -fs node_modules/reveal.js/lib .
	ln -fs node_modules/reveal.js/plugin .
	ln -fs ../node_modules/reveal.js-menu/menu.css third_party_plugins/menu.css
	ln -fs ../node_modules/reveal.js-menu/menu.js third_party_plugins/menu.js

.PHONY: serve
serve: ## Serve the slides
	@echo "Serving slides at http://$(BIND_ADDRESS):$(PORT)/"
	@echo "Quit the server with CONTROL-C."
	@$(call python,-m http.server --bind $(BIND_ADDRESS) $(PORT))

.PHONY: demo
demo: ## Open the reveal.js demo
	$(call python,-m webbrowser file://$$(pwd)/node_modules/reveal.js/demo.html)

.PHONY: deploy
deploy: ## Deploy the slides
	rsync --copy-links --delete --recursive --verbose $(RSYNC_SRC) $(RSYNC_USER)@$(RSYNC_HOST):$(RSYNC_DEST)

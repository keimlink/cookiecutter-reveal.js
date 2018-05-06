SHELL := /bin/bash

export PIP_DISABLE_PIP_VERSION_CHECK ?= True
export PIP_UPGRADE ?= True

pip = $(call python,-m pip $(1))
python = /usr/bin/env python $(1)

.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[\.a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: clean
clean: ## Clean the cookiecutter output
	rm -fr output

.PHONY: develop
develop: ## Install (or update) all packages required for development
	$(call pip,install pip setuptools wheel)
	$(call pip,install --requirement requirements.pip)

.PHONY: test
test: clean ## Test the cookiecutter template and generate a dummy presentation
	cookiecutter --config-file config.yml --output-dir output --no-input .

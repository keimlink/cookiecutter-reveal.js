.DEFAULT_GOAL := help

.PHONY: help clean develop test

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

clean: ## Clean the cookiecutter output
	rm -fr output

develop: ## Install (or update) all packages required for development
	pip install -U pip setuptools wheel
	pip install -U -r requirements.pip

test: clean ## Test the cookiecutter
	cookiecutter --config-file config.yml --output-dir output --no-input .

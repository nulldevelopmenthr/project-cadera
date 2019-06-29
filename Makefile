.PHONY: all

unit: ## Run phpunit tests
	vendor/bin/phpunit


spec: ## Run phpspec
	vendor/bin/phpspec run

.PHONY: all

unit: ## Run phpunit tests
	vendor/bin/phpunit


spec: ## Run phpspec
	vendor/bin/phpspec run


behat: ## Run behat
	APP_ENV=test vendor/bin/behat


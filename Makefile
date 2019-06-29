.PHONY: all

unit: ## Run phpunit tests
	vendor/bin/phpunit


spec: ## Run phpspec
	vendor/bin/phpspec run


behat: ## Run behat
	APP_ENV=test vendor/bin/behat


cs-fix: ## Fix all code style violations using php-cs-fixer
	vendor/bin/php-cs-fixer fix

cs-check: ## Check for coding style violations
	vendor/bin/php-cs-fixer fix --dry-run --diff


stan: ## Run phpstan checks
	vendor/bin/phpstan analyse -l 7 -c phpstan.neon src/ tests/

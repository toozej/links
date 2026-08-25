SHELL := bash
.DEFAULT_GOAL := help

.PHONY: build serve serve-docker stop clean help

build: ## Build the production site into public/
	HUGO_CACHEDIR=$${HUGO_CACHEDIR:-/tmp/hugo-cache} hugo --gc --minify

serve: ## Run Hugo's local development server on port 1313
	HUGO_CACHEDIR=$${HUGO_CACHEDIR:-/tmp/hugo-cache} hugo server --bind 0.0.0.0

serve-docker: ## Run the Hugo and Nginx preview with Docker Compose
	docker compose up

stop: ## Stop the Docker Compose preview
	docker compose down

clean: ## Remove generated site output
	rm -rf public

help: ## Display this help text
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "%-16s %s\\n", $$1, $$2}'

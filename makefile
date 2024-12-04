.DEFAULT_GOAL := help
.PHONY: help build serve clean


clean: ## Empty _build directory except jupyter_cache
	jupyter-book clean .

build: * ## build the book
	jupyter-book build .
	
serve: ## open the book in safari
	open -a Safari "_build/html/index.html"
	
all: clean build serve ## clean, build, and serve



open: ## open project in Nova
	nova .



help:  ## Displays this message
		@echo "Commands for the 'Practical Data Analysis'"
		@echo " "
		@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-18s\033[0m %s\n", $$1, $$2}'

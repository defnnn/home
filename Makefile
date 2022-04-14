up:
	docker-compose up -d

down:
	docker-compose down

devcontainer-hex:
	@echo -n code --folder-uri vscode-remote://dev-container+
	@printf $(shell pwd)/work/dev | od -A n -t x1 | tr -d '[\n\t ]'
	@echo /home/ubuntu
init: ## Initial deploy dotfiles
	for item in zprofile profile zshrc zplugrc gitconfig; do \
		ln -vsf ${PWD}/home/.$$item ${HOME}/.$$item; \
	done


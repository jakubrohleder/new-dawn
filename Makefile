ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

init: ## Initial deploy dotfiles
	for item in zprofile profile zshrc zplugrc gitconfig; do \
		ln -vsf ${ROOT_DIR}/home/.$$item ${HOME}/.$$item; \
	done


TARGET		?= ${HOME}/.tmux.conf
SOURCE		?= ${PWD}/tmux.conf
TPM_REPO	?= https://github.com/tmux-plugins/tpm
TPM_DEST	?= ${HOME}/.tmux/plugins/tpm
PLUGINS_DEST	?= ${HOME}/.tmux/plugins

.PHONY: help

all: help

${TPM_DEST}:
	@echo 'Cloning tmux-plugins repository to `${TPM_DEST}`...'
	@git clone -q ${TPM_REPO} ${TPM_DEST} >/dev/null

install: ${SOURCE} ${TPM_DEST} ## Symlinks configuration and clones tpm
	@ln -s "${SOURCE}" "${TARGET}"
	@echo 'Configuration was symlinked to `${TARGET}`.'
	@echo ' - Load new configuration with: `:source-file ${TARGET}`'
	@echo ' - Install plugins with `prefix + I`'

update:		## Updates tmux configuration
	@git pull

remove:	## Remove symlinks and tpm clone
	rm ${TARGET}
	rm -rf "${TPM_DEST}"
	rm -rf "${PLUGINS_DEST}"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

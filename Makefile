TARGET		?= ${HOME}/.tmux.conf
SOURCE		?= ${PWD}/tmux.conf
BIN_DEST	?= ${HOME}/.local/bin
PICKER_SOURCE	?= ${PWD}/scripts/tmux-session-picker
PICKER_TARGET	?= ${BIN_DEST}/tmux-session-picker
TPM_REPO	?= https://github.com/tmux-plugins/tpm
TPM_DEST	?= ${HOME}/.tmux/plugins/tpm
PLUGINS_DEST	?= ${HOME}/.tmux/plugins

.PHONY: help

all: help

${TPM_DEST}:
	@echo 'Cloning tmux-plugins repository to `${TPM_DEST}`...'
	@git clone -q ${TPM_REPO} ${TPM_DEST} >/dev/null

${PICKER_TARGET}: ${PICKER_SOURCE}
	@mkdir -p "${BIN_DEST}"
	@ln -sf "${PICKER_SOURCE}" "${PICKER_TARGET}"

install: ${SOURCE} ${PICKER_TARGET} ${TPM_DEST} ## Symlinks configuration, installs helpers, and clones tpm
	@ln -s "${SOURCE}" "${TARGET}"
	@echo 'Configuration was symlinked to `${TARGET}`.'
	@echo 'Session picker was symlinked to `${PICKER_TARGET}`.'
	@echo ' - Load new configuration with: `:source-file ${TARGET}`'
	@echo ' - Install plugins with `prefix + I`'

update:		## Updates tmux configuration
	@git pull

remove:	## Remove symlinks and tpm clone
	rm ${TARGET}
	rm -f "${PICKER_TARGET}"
	rm -rf "${TPM_DEST}"
	rm -rf "${PLUGINS_DEST}"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

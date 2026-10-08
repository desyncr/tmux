TARGET		?= ${HOME}/.tmux.conf
SOURCE		?= ${PWD}/tmux.conf
BIN_DEST	?= ${HOME}/.local/bin
PICKER_SOURCE	?= ${PWD}/scripts/tmux-session-picker
PICKER_TARGET	?= ${BIN_DEST}/tmux-session-picker
TPACK		?= tpack

.PHONY: help check-tpack

all: help

check-tpack:
	@command -v "${TPACK}" >/dev/null || { \
		echo "tpack is required; install it with 'brew install tpack'."; \
		exit 1; \
	}

${PICKER_TARGET}: ${PICKER_SOURCE}
	@mkdir -p "${BIN_DEST}"
	@ln -sf "${PICKER_SOURCE}" "${PICKER_TARGET}"

install: ${SOURCE} ${PICKER_TARGET} check-tpack ## Symlinks configuration, installs helpers, and installs plugins
	@ln -sfn "${SOURCE}" "${TARGET}"
	@"${TPACK}" install
	@echo 'Configuration was symlinked to `${TARGET}`.'
	@echo 'Session picker was symlinked to `${PICKER_TARGET}`.'
	@echo ' - Load new configuration with: `:source-file ${TARGET}`'

update:		## Updates tmux configuration
	@git pull

remove:	## Remove configuration and helper symlinks
	rm ${TARGET}
	rm -f "${PICKER_TARGET}"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

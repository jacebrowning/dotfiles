DOTFILE_NAMES := .zshrc

ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
DOTFILE_PATHS := $(DOTFILE_NAMES:%=$(ROOT_DIR)/%)
BACKUP_PREFIX := $(ROOT_DIR)/.backup
BACKUP_DIR := $(BACKUP_PREFIX)-$(shell date +"%s")
FLAG_PATH := $(ROOT_DIR)/.flag

.PHONY: all
all: links

.PHONY: links
links: $(FLAG_PATH)
$(FLAG_PATH): $(DOTFILE_PATHS) Makefile
	mkdir -p $(BACKUP_DIR)
	for file in $(DOTFILE_NAMES) ; do \
		mv ~/$$file $(BACKUP_DIR)/ ; \
		ln -s $(ROOT_DIR)/$$file ~/$$file ; \
	done
	touch $(FLAG_PATH)

.PHONY: clean
clean:
	rm -rf $(FLAG_PATH)

.PHONY: clean-all
clean-all: clean
	rm -rf $(BACKUP_PREFIX)*

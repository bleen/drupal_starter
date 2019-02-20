include .env

.PHONY: up down stop prune ps shell

default: list

list:
	@echo "list"
	#@echo "init"
	@echo "status"
	@echo "reinstall"

init:
	@read -p "Enter the name of your application: " appname; \
	lando init \
	--source remote \
	--remote-url https://www.drupal.org/download-latest/tar.gz \
	--remote-options="--strip-components 1" \
	--recipe drupal8 \
	--destination ./web \
	--name $$appname

reinstall:
	lando drush site-install standard \
	--site-name="$(SITE_NAME)" \
	--db-url=mysql://$(DB_USER):$(DB_PASS)@$(DB_HOST)/$(DB_DATABASE) \
	--account-name=$(ACCOUNT_NAME) --account-pass=$(ACCOUNT_PASS) \
	--account-mail=$(ACCOUNT_MAIL) \
	install_configure_form.enable_update_status_module=NULL \
	install_configure_form.enable_update_status_emails=NULL

status:
	lando drush status

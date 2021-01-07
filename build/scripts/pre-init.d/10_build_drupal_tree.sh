#!/usr/bin/env sh
BUILD_FILE='/drupal/composer.json'

if [ -f "$BUILD_FILE" ]; then
  # Custom build file provided, use it.
  cd /drupal || exit
  mkdir -p scripts/composer
  curl -O https://raw.githubusercontent.com/drupal-composer/drupal-project/8.x/scripts/composer/ScriptHandler.php
  mv ScriptHandler.php scripts/composer/

  # Build the tree.
  composer install --no-interaction --no-progress --no-suggest
else
  # Use the default drupal-composer build.
  /usr/local/bin/composer create-project drupal-composer/drupal-project:8.x-dev /drupalbuild --no-interaction --no-progress --no-suggest
  mv /drupalbuild/web /drupal
fi

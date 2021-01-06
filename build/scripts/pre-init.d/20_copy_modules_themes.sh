#!/usr/bin/env sh
CUSTOM_MODULES_DIR='/modules'
CUSTOM_THEMES_DIR='/themes'

if [ -d "$CUSTOM_MODULES_DIR" ]; then
  rsync -a --inplace --no-compress "$CUSTOM_MODULES_DIR" /drupal/modules/custom
fi

if [ -d "$CUSTOM_THEMES_DIR" ]; then
  rsync -a --inplace --no-compress "$CUSTOM_THEMES_DIR" /drupal/themes/custom
fi

#!/usr/bin/env sh
for i in /scripts/pre-init.d/*sh
do
  if [ -e "${i}" ]; then
    echo "[i] pre-init.d - processing $i"
    "${i}"
  fi
done

for MODULE_PATH in /drupal/modules/custom /drupal/themes/custom; do
  if [ -d "$MODULE_PATH" ]; then
    echo "Checking $MODULE_PATH..."
    /root/.composer/vendor/bin/drupal-check --drupal-root=/drupal "$MODULE_PATH"
  else
    echo "Skipping empty path: $MODULE_PATH..."
  fi
done

# jacobsanford/drupal-check [![](https://images.microbadger.com/badges/image/jacobsanford/drupal-check:latest)](http://microbadger.com/images/jacobsanford/drupal-check:latest "Get your own image badge on microbadger.com") [![Build Status](https://travis-ci.org/jacobsanford/docker-drupal-check.svg?branch=latest)](https://travis-ci.org/jacobsanford/docker-drupal-check)

Docker wrapper for [mglaman/drupal-check](https://github.com/mglaman/drupal-check): Check Drupal code for deprecations and discover bugs via static analysis. Drupal is installed via [drupal-composer/drupal-project](https://github.com/drupal-composer/drupal-project), and is located at ```/drupal/web/``` inside the container.

## General Use
```
docker run \
  --rm \
  -v ./custom:/drupal/web/modules/custom \
  jacobsanford/drupal-check
  /drupal/web/modules/custom
```

## License
- jacobsanford/drupal-check is licensed under the MIT License:
  - [http://opensource.org/licenses/mit-license.html](http://opensource.org/licenses/mit-license.html)
- Attribution is not required, but much appreciated:
  - `Docker Drupal Check Image by Jacob Sanford`

#!/bin/sh
# Deploy blog posts to civilityandtruth.com.

# Print shell commands as they are executed.
set -x

# Change _config.yml to use real civilityandtruth.com URL.
sed -i .bak -e '/^url:/s/:.*$/: http:\/\/civilityandtruth.com/' _config.yml

# (Re)generate the site into the _site directory.
bundle exec jekyll build

# Copy over only changed files to the real civilityandtruth.com site.
# (See http://nathangrigg.net/2012/04/rsyncing-jekyll/ for details.)
rsync --compress --recursive --checksum --delete _site/ civilityandtruth.com:/var/www/civilityandtruth.com/html/

# Restore _config.yml from the backup copy kept by sed.
mv _config.yml.bak _config.yml

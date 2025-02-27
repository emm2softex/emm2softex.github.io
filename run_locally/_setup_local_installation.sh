#!/bin/bash

# Install latest Ruby version from official website
# https://www.ruby-lang.org/en/documentation/installation/

# Install Jekyll and Buncle
gem install jekyll bundler
# Update Rubygems, if requested

# Copy _config.yml to your repository root folder. Make sure it is included in the .ignore, as it should not be pushed to GitHub (it may mess up local GitHub Pages Actions)
# cd REPOSITORY_FOLDER
cp ./run_locally/default_config.yml ./_config.yml

# On your repository folder, install github pages gem and its dependencies
bundle install

# Run Jekyll server. Site can be accessed through localhost:4000
bundle exec jekyll serve
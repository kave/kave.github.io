#!/bin/sh

# ==========================================================================
# Setup script for installing project dependencies.
# NOTE: Run this script while in the project root directory.
#       It will not run correctly when run from another directory.
# ==========================================================================

# Set script to exit on any errors.
set -e

# Build project dependencies.
build(){
    if hash gem 2>/dev/null; then
        echo 'Installing project dependencies...'
        gem install jekyll
        gem install pygments.rb
    else
        echo 'Ruby Gems is not installed...'
        echo 'Go here to install: https://rubygems.org/pages/download'
    fi

}

build


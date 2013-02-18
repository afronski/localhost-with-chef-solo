#! /usr/bin/env bash

# Prepare environment.
sudo pacman -S --quiet --needed --noconfirm git ruby

CHEF_INSTALLED=`gem list --installed "^chef$"`

if [ "$CHEF_INSTALLED" != "true" ]; then
    gem install chef --no-ri --no-rdoc
fi

GEM_BIN_DIR=`gem env | grep "$HOME" | awk '{ print $2 }'`

# Prepare directory.
TMP_DIRECTORY=/tmp/afronski-provisioning

if [ -d "$TMP_DIRECTORY" ]; then
    rm -rf $TMP_DIRECTORY
fi

mkdir -p $TMP_DIRECTORY
pushd $TMP_DIRECTORY

# Clone repository and go to the repository.
git clone git@github.com:afronski/provisioning.git
pushd provisioning

# Provision environment.
$GEM_BIN_DIR/bin/chef-solo -c solo.rb -j solo.json
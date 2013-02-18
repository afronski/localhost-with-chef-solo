#! /usr/bin/env bash

# Prepare environment.
sudo pacman -S git ruby-chef

# Prepare directory.
TMP_DIRECTORY=/tmp/afronski-provisioning

if [ -d $TMP_DIRECTORY ]
    rm -rf $TMP_DIRECTORY
fi

mkdir -p $TMP_DIRECTORY
pushd $TMP_DIRECTORY

# Clone repository and go to the repository.
git clone git@github.com:afronski/provisioning.git
pushd provisioning

# Provision environment.
chef-solo -c solo.rb -j solo.json
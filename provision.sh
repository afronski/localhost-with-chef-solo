#! /usr/bin/env bash

USERNAME=afronski

# Check root rights.
WHOAMI=`whoami`
if [ $WHOAMI != "root" ]; then
    echo 'You cannot provision your system unless you are a root :('
    exit
fi

# Copy keys from user directory to the root.
if [ ! -d "/root/.ssh" ]; then
    mkdir -p /root/.ssh
fi

GITHUB_ADDED=`cat /root/.ssh/config | grep "github.com" | awk '{ print $2 }'`

if [ "$GITHUB_ADDED" != "github.com" ]; then
    echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
fi

if [ ! -e "/root/.ssh/id_rsa" ]; then
    cp /home/$USERNAME/.ssh/id_rsa* /root/.ssh/
fi

chmod 0600 /home/$USERNAME/.ssh/id_rsa*
chmod 0600 /root/.ssh/id_rsa*

# Prepare environment.
pacman -S --quiet --needed --noconfirm git ruby

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
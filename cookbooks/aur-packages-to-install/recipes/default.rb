include_recipe "pacaur"

# AUR packages to install.
aur_browsers = %w{google-chrome-dev firefox-nightly opera-next}

nosql = %w{riak}

aur_packages = [
    aur_browsers,

    nosql
]

aur_packages.flatten.each do |a_aur_package|
    pacaur_package a_aur_package
end
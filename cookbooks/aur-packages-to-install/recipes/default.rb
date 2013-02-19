# AUR packages to install.
aur_browsers = %w{google-chrome-dev firefox-nightly opera-next}

aur_packages = [
    aur_browsers
]

aur_packages.flatten.each do |a_aur_package|
    pacaur_package a_aur_package
end
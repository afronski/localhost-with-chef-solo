include_recipe "pacaur"

# AUR packages to install.
aur_browsers = %w{google-chrome-dev firefox-nightly opera-next google-talkplugin}
graphics = %w{bbswitch bumblebee nvidia-bumblebee nvidia-utils-bumblebee}
nosql = %w{riak rabbitmq}
other_tools = %w{sublime-text dropbox phantomjs-bin snort}
languages = %w{io}

aur_packages = [
    aur_browsers,
    graphics,
    nosql,
    other_tools,
    languages
]

aur_packages.flatten.each do |a_aur_package|
    pacaur_package a_aur_package
end
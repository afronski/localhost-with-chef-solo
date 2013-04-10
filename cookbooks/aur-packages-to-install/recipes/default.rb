include_recipe "pacaur"

# AUR packages to install.
aur_browsers = %w{google-chrome-dev firefox-nightly opera-next google-talkplugin}
nosql = %w{riak rabbitmq}
other_tools = %w{dropbox pbcopy phantomjs-bin snort sublime-text}
languages = %w{io}

aur_packages = [
    aur_browsers,
    nosql,
    other_tools,
    languages
]

aur_packages.flatten.each do |a_aur_package|
    pacaur_package a_aur_package
end
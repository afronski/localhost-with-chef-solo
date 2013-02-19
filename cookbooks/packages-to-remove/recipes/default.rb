# Packages for removing.
packages = [ "yaourt", "nano" ]

packages.each do |a_package|
    package a_package do
        action :remove
    end
end
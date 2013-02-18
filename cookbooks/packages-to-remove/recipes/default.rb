# Packages for removing.
packages = [ "yaourt" ]

packages.each do |a_package|
    package a_package do
        action :remove
    end
end
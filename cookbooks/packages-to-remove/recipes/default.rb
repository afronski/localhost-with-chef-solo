# Packages for removing.
force_removal_packages = [ "granite-bzr" ]
packages = [ "nano", "yaourt" ]

packages.each do |a_package|
    package a_package do
        action :remove
    end
end

force_removal_packages.each do |a_package|
    execute "force removal of #{a_package}" do
        command "pacman -Rd --noconfirm #{a_package}"
        returns [0,1]
    end
end
packages = [
    {
        :name => "cower",
        :version => "6-1-x86_64"
    },
    {
        :name => "pacaur",
        :version => "3.2.3-1-any"
    }
]

# Install program and dependencies for AUR packages and repositories management.
packages.each do |aur_management_package|
    package_name = "aur-packages/#{aur_management_package.name}-#{aur_management_package.version}.pkg.tar.xz"

    execute "install prepared package for AUR repositories management (#{package_name})"
        command "pacaur -U --noedit --noconfirm #{package_name}"
        cwd "/tmp/afronski-provisioning/provisioning"
    end
end

# Update AUR packages.
execute "upgrade all installed AUR packages"
    command "pacaur -Sua --noedit --noconfirm"
end
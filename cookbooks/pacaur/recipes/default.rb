packages = [
    {
        :name => "cower",
        :version => "9-1-x86_64"
    },
    {
        :name => "pacaur",
        :version => "4.1.1-1-any"
    }
]

# Install program and dependencies for AUR packages and repositories management.
packages.each do |aur_management_package|
    execute "install prepared package for AUR repositories management (#{aur_management_package[:name]})" do
        command "pacman -U --noconfirm --needed --noprogressbar aur-packages/#{aur_management_package[:name]}-#{aur_management_package[:version]}.pkg.tar.xz"
        cwd "/tmp/afronski-provisioning/provisioning"
    end
end

# Update AUR packages.
execute "upgrade all installed AUR packages" do
    command "pacaur -Sua --noedit --noconfirm --asroot"
end
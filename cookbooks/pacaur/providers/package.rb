action :install do
    cmd = "pacaur -Su --noedit --noconfirm --asroot #{new_resource.name}"
    execute "install AUR package (#{new_resource.name})" do
        command cmd
    end
end

action :uninstall do
    cmd = "pacaur -R --noedit --noconfirm --asroot #{new_resource.name}"
    execute "uninstall AUR package (#{new_resource.name})" do
        command cmd
    end
end
action :install do
    execute "install AUR package #{new_resource.name}" do
        command "pacaur -Sy --noedit --noconfirm --asroot #{new_resource.name}"
    end
end

action :uninstall do
    execute "uninstall AUR package #{new_resource.name}" do
        command "pacaur -R --noedit --noconfirm --asroot #{new_resource.name}"
    end
end
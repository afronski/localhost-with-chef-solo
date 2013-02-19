action :install do
    execute "install AUR package #{new_resource.name}" do
        command "pacaur -Sa --needed --noedit --noconfirm --asroot #{new_resource.name}"
    end

    new_resource.updated_by_last_action(true)
end

action :uninstall do
    execute "uninstall AUR package #{new_resource.name}" do
        command "pacaur -R --noedit --noconfirm --asroot #{new_resource.name}"
    end

    new_resource.updated_by_last_action(true)
end
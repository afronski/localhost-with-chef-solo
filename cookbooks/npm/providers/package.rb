action :install do
    cmd = "npm install -g #{new_resource.name}"
    cmd += "@#{new_resource.version}" if new_resource.version
    execute "install NPM package #{new_resource.name}" do
        command cmd
    end

    new_resource.updated_by_last_action(true)
end

action :uninstall do
    cmd = "npm uninstall -g #{new_resource.name}"
    cmd += "@#{new_resource.version}" if new_resource.version
    execute "uninstall NPM package #{new_resource.name}" do
        command cmd
    end

    new_resource.updated_by_last_action(true)
end

action :install_local do
    cmd = "npm install #{new_resource.name}"
    cmd += "@#{new_resource.version}" if new_resource.version
    execute "install NPM package #{new_resource.name} into #{path}" do
        cwd path
        command
    end

    new_resource.updated_by_last_action(true)
end

action :uninstall_local do
    cmd = "npm uninstall #{new_resource.name}"
    cmd += "@#{new_resource.version}" if new_resource.version
    execute "uninstall NPM package #{new_resource.name} into #{path}" do
        cwd path
        command cmd
    end

    new_resource.updated_by_last_action(true)
end
username = afronski

# Enable big amount of file system user watches for dropbox.
execute "enable big amount of 'max_user_watches' for dropbox client" do
    command "echo 100000 | tee /proc/sys/fs/inotify/max_user_watches"
end

# Add user to group bumblebee.
execute "adding user to the 'bumblebee' group" do
    command "gpasswd -a #{username} bumblebee"
end

# Enable specified services.
services = [
    "bumblebeed"
]

services.each do |service_name|
    execute "enable service #{service_name}" do
        command "systemctl enable #{service_name}.service"
    end
end
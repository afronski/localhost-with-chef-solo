# Enable big amount of file system user watches for dropbox.
execute "enable big amount of 'max_user_watches' for dropbox client" do
    command "echo 100000 | tee /proc/sys/fs/inotify/max_user_watches"
end


actions :install, :uninstall, :install_local, :uninstall_local
default_action :install if defined?(default_action)

attribute :name, :name_attribute => true
attribute :version, :default => nil
attribute :path, :default => nil
actions :install, :uninstall
default_action :install if defined?(default_action)

attribute :name, :name_attribute => true
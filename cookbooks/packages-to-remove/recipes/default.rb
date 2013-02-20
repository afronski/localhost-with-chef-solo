# Packages for removing.
force_removal_packages = [ "granite-bzr" ]
packages = [
    "brasero",
    "faenza-hotot-icon",
    "gmpc",
    "hotot-gtk3-git",
    "hotot-data-git",
    "nano",
    "pacmanxg4",
    "transmission-cli",
    "transmission-gtk",
    "vim",
    "vi",
    "xnoise",
    "yaourt"
]

packages.each do |a_package|
    package a_package do
        action :remove
    end
end

force_removal_packages.each do |a_package|
    execute "force removal of #{a_package}" do
        command "pacman -Rd --noconfirm #{a_package}"
        returns [0,1]
    end
end

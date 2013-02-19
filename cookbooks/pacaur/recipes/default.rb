packages = [
    "cower-6-1-x86_64",
    "pacaur-3.2.3-1-any"
]

packages.each do |specified_package|
    pacman_aur "aur-packages/#{specified_package}.pkg.tar.xz"
      cwd "/tmp/afronski-provisioning/provisioning"
    end
end

# Update AUR packages.
pacman_aur_upgrade_all
packages = [
    "cower-6-1-x86_64",
    "pacaur-3.2.3-1-any"
]

packages.each do |specified_package|
    execute "install #{specified_package} necessary for AUR packages management" do
      command "pacman -U --noconfirm --noprogressbar ../../aur-packages/#{specified_package}.pkg.tar.xz"
    end
end

execute "update newly installed AUR packages" do
    command "pacaur -Syua --noconfirm  --noprogressbar"
end
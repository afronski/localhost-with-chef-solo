execute "upgrade all packages by pacman" do
    command "pacman -Syu --quiet --noconfirm --needed --noprogressbar"
end
# What?

Customized scripts for provisioning automatically my local development environment.

# Requirements

- Semi-automatic scripts and orchestration for provisioning most recent ArchLinux version.
- Up-to-date.
- Backuping scripts (`/home`, `/etc`, shared configuration files).
- Setting up only the necessary minimum:
  - Locales, fonts, `tty` settings.
  - `grub` + `slim`
  - /etc and /home configuration files from *dotfiles* repository.
  - `X` + `xmonad` + `xmobar` + `yeganesh`
  - `VirtualBox` + `vagrant`
  - Editors
  - Browsers
  - `zsh` and `oh-my-zsh` (from my fork).
  - `ghc` + `cabal`
  - Python
    - 2.7
    - 3.4
    - `virtualenv` + `pip`
  - RVM (with `1.9.3` and `2.0.0` and `bundler`).
  - NVM (`0.8`, `0.10` and `0.11`).
  - OpenSSH (keys and configuration provided as a parameter).
  - OpenVPN (certificates delivered as a parameter).
    - Remember about `network-manager` configuration.
  - JDK + JRE (multiple versions - 1.7 and 1.8) + `scala` + `sbt` + `clojure` + `leiningen`.
  - Setting up `docker` and `LXC`.
  - Basic set of programs and tools:
    - `vim`, `emacs`, `sublime-text`, `sublime-text-dev`
    - `feh`, `rfkill`, `slock`, `stalonetray`, `bumblebee`, `bbswitch`, `nvidia`, `nvidia-tools`
    - `curl`, `wget`, `rsync`, `tcpdump`, `wvdial`, `wpa_supplicant`, `wireless_tools`, `nm-applet`
    - `htop`, `powertop`, `iotop`, `strace`, `ltrace`, `gdb`, `cgdb`
    - `gcc`, `g++`, `make`, `autotools`, `cmake`, `scons`, `valgrind`
    - `evince`, `thunar`, `xarchiver`, `rxvt-unicode`
    - `mpd`, `mpdscribble`, `ncmpcpp`, `mpc`, `vlc`, `mplayer`
    - `zip`, `unzip`, `p7zip`, `rar`
    - `pacaur`, `colordiff`, `git`, `subversion`, `cpupower`
  - Global `npm` modules:
    - `yo`
    - `jsontool`
    - `grunt-cli`
    - `jshint`
    - `less`
    - `bower`
    - `uglify-js`
- The simplest possible orchestration for that requirements.

# TODO

- Adjusting existing repository to the requirements and major rewrite which drops the deprecated `chef-solo` out.

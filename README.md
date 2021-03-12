Author: [@yashguptaz](https://twitter.com/yashguptaz) 

A script for setting up all the symlinks for all the config is in progress.
If you're interested then take a look at,

`configure.sh`

Make sure to run `chmod +x ./configure.sh`
and then you can run the script by simply doing `./configure.sh`

# Quick Start

1. Clone this repo
   `git clone https://github.com/yashguptaz/dotfiles-and-config.git ~/.dotfiles`
2. `cp -a ~/.dotfiles/home ~/`
3. `cp -a ~/.dotfiles/config/ ~/.config/`
4. Install all the programs

## Zsh and OhMyZsh

https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

https://github.com/ohmyzsh/ohmyzsh

## Neovim

1. Install Neovim (0.5+ which is the nightly version as of writing)
2. Install vim plug https://github.com/junegunn/vim-plug
3. Open `~/.config/nvim/init.vim`
4. Run `:so %` in neovim to source the `init.vim` file
5. Run `:PlugInstall` in neovim to install all the plugins

## Node and NPM

1. Use https://github.com/Schniz/fnm to install Fast Node Manager

## i3wm, X utilities and autotiling

i3wm

```bash
sudo pacman -S i3-gaps i3status i3lock dmenu    # Arch

sudo apt install i3-gaps i3status i3lock dmenu    # Ubuntu
```



X Utilities

```bash
sudo pacman -S xorg-xset xorg-xrandr   # Arch

sudo apt install xorg-xset xorg-xrandr   # Ubuntu
```



autotiling

```bash
yay -S autotiling   # AUR only
```



## Alacritty

```bash
sudo pacman -S alacritty

sudo apt install alacritty
```

## Polybar

https://github.com/adi1090x/polybar-themes
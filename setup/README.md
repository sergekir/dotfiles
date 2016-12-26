# System setup

## GUI

Desktop environment: `xubuntu-core^ xfce4-xkb-plugin xclip`

Terminal: `gnome-terminal`

Browser: `https://vivaldi.com`

Theme: `http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme`

Icons: `wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install-papirus-home-gtk.sh | sh`


## Keyboard shortcuts

Change `Caps Lock` to `Escape`: `/usr/bin/setxkbmap -option "caps:escape"`

## Editor

### Neovim

Compile

```bash
rm -r build
make clean
make CMAKE_BUILD_TYPE=Release
```

Plugins

```bash
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Tools

### Build and tools

`build-essential python3-pip atool p7zip-full`

### Docker

`https://get.docker.com`

`https://github.com/docker/compose`

### Graphics

`blender inkscape gimp`

## Terminal

### zsh

Add virtualenv and 256 color stuff

and oh-my-zsh

### tmux

Work with shortcuts and format status line

### ranger

`pip install git+https://github.com/ranger/ranger.git/#egg=ranger`

### mocp

Switch to vim-like shortcuts

### httpie

### Theme: base16

`https://github.com/chriskempson/base16-shell`

### Font: Source Code Pro

`https://github.com/adobe-fonts/source-code-pro`

Terminal font: Source Code Pro Medium 12.6

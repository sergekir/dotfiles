install testing
select install utils

## PPA
```
add-apt-repository -y ppa:neovim-ppa/stable
add-apt-repository -y ppa:git-core/ppa
```

## GUI and apps

```
apt install -y lightdm lxde-core lxde-common lxsession lxsession-logout lxappearance unifont
```

## Terminal tools

```
apt install -y sudo neovim zsh tmux moc git build-essential atool p7zip-full libbz2-dev libsqlite3-dev libreadline-dev libffi-dev
```

## neovim

symlink from dotfiles/vimrc to /home/serge/.config/nvim/init.vim

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## meld

```
git clone https://gitlab.gnome.org/GNOME/meld.git
apt install python3-cairo python3-gi-cairo libxml2-utils intltool
```

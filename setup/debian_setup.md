install testing
select install utils

# PPA

```
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo add-apt-repository -y ppa:git-core/ppa
```

# GUI and apps
```
apt install -y lightdm lxde-core lxde-common lxsession lxsession-logout lxappearance
```

# Terminal tools
```
apt install -y sudo neovim zsh tmux moc git build-essential atool p7zip-full
```

# neovim

symlink from dotfiles/vimrc to /home/serge/.config/nvim/init.vim

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

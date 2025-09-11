Reference: [https://gist.github.com/luizomf/f0aad4db02e1ee4fdce2769ac58122fb](https://gist.github.com/luizomf/f0aad4db02e1ee4fdce2769ac58122fb)

```bash
sudo apt install -y zsh
sudo apt-get install -y powerline fonts-powerline
git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
```

Now you can reboot.

```bash
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

git clone git@github.com:denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

git clone git@github.com:zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone git@github.com:dracula/gnome-terminal ~/.gnome-terminal
cd ~/.gnome-terminal
./install.sh
cd ~
rm -Rf ~/.gnome-terminal

# USE .zshrc config from
# https://gist.github.com/luizomf/35aa0596ea45555286d3f70133afebcc

# SET BACKGROUND COLOR TO
# #171724

## startup fun
## https://linux.cn/article-16205-1.html
# sudo apt install -y fortune lolcat neofetch
# sudo apt-get install -y imagemagick jp2a
```

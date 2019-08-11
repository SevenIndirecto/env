# Notes on WSL2

Fix vim

`vim ~/.vimrc`

add

`:set term=ansi`


# Setup ZSH in WSL2 Ubuntu

https://nickymeuleman.netlify.com/blog/linux-on-windows-wsl2-zsh-docker

`sudo apt update && sudo apt upgrade -y`

`sudo apt install build-essential git zsh xclip`

`git config --global core.autocrlf input`

Use zsh by default:

`chsh -s $(which zsh)`

Install Oh My ZSH

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Powerlevel 10k theme

https://github.com/romkatv/powerlevel10k

`$ git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`

Set `ZSH_THEME=powerlevel10k/powerlevel10k` in your `~/.zshrc`.


For fixing powerline fonts see: https://nickymeuleman.netlify.com/blog/linux-on-windows-wsl2-zsh-docker
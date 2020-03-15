# Linux

## Notes on Setting up a linux dev env

* Install zsh
    * Set as default shell `chsh $(which zsh)`
* Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
* Setup [powerlevel10k](https://github.com/romkatv/powerlevel10k)
* Install https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
* Install https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

* Clone https://github.com/SevenIndirecto/env and follow instructions shared and OS specific README.md
* Vim package manager

`git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac`

* start `vim` and run `:PackUpdate` to install packages and theme

## Edit gnome .desktop shortcut IDEA jetbrains example

To use desktop shortcuts createa .desktop file. When updating IDEA update soft link of `idea-current` to install dir.

Location:

`vim ~/.local/share/applications/jetbrains-idea.desktop`

```
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Ultimate Edition
Icon=/home/seven/apps/dev/jetbrains/idea/idea-current/bin/idea.png
Exec="/home/seven/apps/dev/jetbrains/idea/idea-current/bin/idea.sh" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea
```

## (Optional) SETUP 256 color terminal

https://push.cx/2008/256-color-xterms-in-ubuntu

`sudo aptitude install ncurses-term`

Xterm needs a little more configuration, edit ~/.Xdefaults to add:

```
*customization: -color
XTerm*termName: xterm-256color
```

`$ xrdb -merge ~/.Xdefaults`

You'll also want to add this to your ~/.xsession so it happens every time you log in:

```
if [ -f $HOME/.Xdefaults ]; then
xrdb -merge $HOME/.Xdefaults
fi
```

Check with

$ tput colors
256
$ echo $TERM
xterm-256color

## Useful tools

* [shellcheck](https://github.com/koalaman/shellcheck) - "Linter for shell scripts"
* [tldr](https://tldr.sh/) - Simplifed community driven, example oriented `man`
* [fd](https://github.com/sharkdp/fd) - fd is a simple, fast and user-friendly alternative to find.

## Setup bash completion if required

`$ sudo apt install bash-completion


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

## SETUP 256 color terminal

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


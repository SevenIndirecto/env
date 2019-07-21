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

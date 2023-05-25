#!/bin/bash

cd ~/.config/JetBrains/IntelliJIdea2021.1
rm eval/*.key
sed -i '/evlsprt/d' options/other.xml
rm -rf ~/.java/.userPrefs/jetbrains/idea
